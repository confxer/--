package org.spring.service;

import java.text.SimpleDateFormat;
import java.sql.Date;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.spring.domain.KakaoTokenResponse;
import org.spring.domain.KakaoUserInfo;
import org.spring.domain.MemberVO;
import org.spring.domain.NaverTokenResponse;
import org.spring.domain.NaverUserInfo;
import org.spring.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	private String kakaoClientId = "eba8c02fe6bd2a91e0a31d8d70a92440";
	private String kakaoClientSecret = "ZNVKzVMFGPqE0F7mftCgbtemkgHfQ1sC";
	private String redirectUri = "http://localhost:8090/member/callback";

    private String naverClientId = "LO2vjhWJmTRVcdCU6cZU";
    private String naverClientSecret = "nFoisMAjWR";
    private String naverRedirectUri = "http://localhost:8090/member/callback2";

	@Override
	public void registerMember(MemberVO memberVO) {
		memberMapper.insertMember(memberVO);
	}

	@Override
	public MemberVO findByMemberIdAndPassword(String memberId, String password) {
		return memberMapper.findByMemberIdAndPassword(memberId, password);
	}

	@Override
	public void kakaoLogin(String code, HttpServletRequest request) {
		String accessToken = getAccessToken(code);
		KakaoUserInfo userInfo = getUserInfo(accessToken);

		// 카카오에서 제공하는 고유 아이디
		String kakaoUserId = userInfo.getId();

		// 기존 회원인지 체크 (회원가입 처리 등)
		MemberVO member = memberMapper.findByKakaoId(kakaoUserId);
		if (member == null) {
			// 새로운 회원으로 처리
			member = new MemberVO();
			member.setIntegration(kakaoUserId);
			member.setNickname(userInfo.getKakao_account().getProfile().getNickname());
			// 기타 정보 설정
			memberMapper.insertMember(member);
		}

		// 로그인 처리 등
		// 예: 세션에 사용자 정보 저장
		request.getSession().setAttribute("loggedInUser", member);
	}

	private String getAccessToken(String code) {
		String accessTokenUri = "https://kauth.kakao.com/oauth/token";
		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		String params = "grant_type=authorization_code&client_id=" + kakaoClientId + "&client_secret="
				+ kakaoClientSecret + "&redirect_uri=" + redirectUri + "&code=" + code;

		HttpEntity<String> entity = new HttpEntity<>(params, headers);
		ResponseEntity<KakaoTokenResponse> response = restTemplate.postForEntity(accessTokenUri, entity,
				KakaoTokenResponse.class);

		return response.getBody().getAccess_token();
	}

	private KakaoUserInfo getUserInfo(String accessToken) {
		String userInfoUri = "https://kapi.kakao.com/v2/user/me";
		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(accessToken);

		HttpEntity<String> entity = new HttpEntity<>(headers);
		ResponseEntity<KakaoUserInfo> response = restTemplate.exchange(userInfoUri, HttpMethod.GET, entity,
				KakaoUserInfo.class);

		return response.getBody();
	}

	@Override
	public void NaverLogin(String code, HttpServletRequest request) {
		String accessToken = getNaverAccessToken(code);
		NaverUserInfo userInfo = getNaverUserInfo(accessToken);
		System.out.println("Naver User accessToken: " + accessToken);
		String naverUserId = userInfo.getResponse().getId();
		System.out.println("Naver User Info: " + userInfo);
		MemberVO member = memberMapper.findByNaverId(naverUserId);
		if (member == null) {
			member = new MemberVO();
			member.setMember_id(naverUserId);
			member.setNickname(userInfo.getResponse().getNickname());
			member.setName(userInfo.getResponse().getName());
			member.setPhone_number(userInfo.getResponse().getMobile());
			member.setType(0);
			member.setIntegration("NAVER");
			member.setNickname("test");
			try {
                String birthDateString = userInfo.getResponse().getBirthyear() + "-" + userInfo.getResponse().getBirthday();
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Date birthDate = (Date) formatter.parse(birthDateString);
                member.setBirth_date(birthDate);
            } catch (ParseException e) {
                e.printStackTrace();
            }
			memberMapper.insertMember(member);
		}

		request.getSession().setAttribute("loggedInUser", member);
	}

	private String getNaverAccessToken(String code) {
		String accessTokenUri = "https://nid.naver.com/oauth2.0/token";
		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		String params = "grant_type=authorization_code&client_id=" + naverClientId + "&client_secret="
				+ naverClientSecret + "&redirect_uri=" + naverRedirectUri + "&code=" + code;

		HttpEntity<String> entity = new HttpEntity<>(params, headers);
		ResponseEntity<NaverTokenResponse> response = restTemplate.postForEntity(accessTokenUri, entity,
				NaverTokenResponse.class);

		return response.getBody().getAccess_token();
	}

	private NaverUserInfo getNaverUserInfo(String accessToken) {
		String userInfoUri = "https://openapi.naver.com/v1/nid/me";
		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(accessToken);

		HttpEntity<String> entity = new HttpEntity<>(headers);
		ResponseEntity<NaverUserInfo> response = restTemplate.exchange(userInfoUri, HttpMethod.GET, entity,
				NaverUserInfo.class);

		return response.getBody();
	}

	@Override
	public int updateNickname(String phone_number, String nickname) {
		return memberMapper.updateMember(phone_number, nickname);
	}
}
