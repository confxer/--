package org.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.spring.domain.MemberVO;

public interface MemberService {
    void registerMember(MemberVO memberVO);

	MemberVO findByMemberIdAndPassword(String memberId, String password);

	void kakaoLogin(String code, HttpServletRequest request);

	void NaverLogin(String code, HttpServletRequest request);



	int updateNickname(String phone_number, String nickname);
}