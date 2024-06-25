package org.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.spring.domain.MemberVO;
import org.spring.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	@Autowired
	private MemberService memberService;

	@GetMapping("/register")
	public String showRegisterForm(Model model) {
		model.addAttribute("memberVO", new MemberVO());
		return "member/register";
	}

	@PostMapping("/register")
	public String register(MemberVO memberVO, Model model) {
		if (memberVO.getType() == 1
				&& (memberVO.getBusiness_number() == null || memberVO.getBusiness_number().isEmpty())) {
			model.addAttribute("error", "Business number is required for admin type.");
			return "register";
		}

		memberService.registerMember(memberVO);
		model.addAttribute("message", "Registration successful!");
		return "login";
	}

	@GetMapping("/login")
	public String showLoginForm(Model model) {
		model.addAttribute("memberVO", new MemberVO());
		return "member/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam("member_id") String memberId, @RequestParam("password") String password,
			HttpSession session, Model model) {

		MemberVO member = memberService.findByMemberIdAndPassword(memberId, password);

		if (member != null) {
			session.setAttribute("loggedInMember", member);
			return "redirect:/"; // 로그인 성공 시 메인 홈으로 리다이렉트
		} else {
			model.addAttribute("errorMessage", "Invalid Member ID or Password.");
			return "login"; // 로그인 실패 시 다시 로그인 화면으로
		}
	}

	@GetMapping("/callback")
	public String kakaoLogin(@RequestParam String code, HttpServletRequest request) throws JsonProcessingException {
// authorizedCode: 카카오 서버로부터 받은 인가 코드
		log.info("Hello here!");
		memberService.kakaoLogin(code, request);
		return "redirect:/";
	}

	@GetMapping("/callback2")
	public String naverLogin(@RequestParam String code, HttpServletRequest request) throws JsonProcessingException {
		log.info("Naver login callback with code: {" + code + "}");
		memberService.NaverLogin(code, request);
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String Logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false); // 기존 세션이 있을 경우에만 가져옵니다.
		if (session != null) {
			session.invalidate(); // 세션 무효화
		}

		return "redirect:/";
	}

	@GetMapping("/profile")
	public String profile(HttpSession session, Model model) {
		// 세션에서 로그인한 사용자 정보 가져오기
		Object loggedInUser = session.getAttribute("loggedInUser");

		// 로그인한 사용자 정보가 없는 경우 로그인 페이지로 리다이렉트
		if (loggedInUser == null) {
			return "redirect:/member/login";
		}

		// 모델에 사용자 정보 추가
		model.addAttribute("user", loggedInUser);

		return "member/profile";
	}

	@PostMapping("/updateProfile")
	public String updateProfile(@ModelAttribute MemberVO updatedMember, RedirectAttributes redirectAttributes) {
// updatedMember 객체는 폼에서 전송된 데이터를 자동으로 매핑한 객체입니다.
// 여기서는 간단히 닉네임만 업데이트 예제를 보여드립니다.

// 로직 예시: 사용자의 닉네임 업데이트
		int updateSuccess = memberService.updateNickname(updatedMember.getPhone_number(), updatedMember.getNickname());

		if (updateSuccess == 1) {
			redirectAttributes.addFlashAttribute("successMessage", "프로필이 성공적으로 업데이트되었습니다.");
			log.info("s");
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", "프로필 업데이트에 실패했습니다.");
		}

// 프로필 페이지로 리다이렉트
		return "redirect:/member/profile";
	}
}
