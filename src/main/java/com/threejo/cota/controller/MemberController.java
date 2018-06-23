package com.threejo.cota.controller;


import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.threejo.cota.model.Member;
import com.threejo.cota.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService ms;

	@RequestMapping(value = "joinpage") // 회원가입 페이지
	public String joinpage() {

		return "member/join";
	}

	@RequestMapping(value = "insertmb", method = RequestMethod.POST) // 헤더 주소 회원가입 (insert)
	public String insertmb(@RequestParam("profile_url") MultipartFile uploadfile,
						   @RequestParam("email") String email,
						   @RequestParam("nickname") String nickname,
						   boolean is_enterprise,       // boolean은 예외
						   HttpServletRequest request, Model model) throws Exception {
		
		String fileName = "";
		String fileSave = request.getSession().getServletContext().getRealPath("/upload/");
		File fileDirectory = new File(fileSave);
		Member member = new Member();
		
		if (!uploadfile.isEmpty()) {
			
			if (!fileDirectory.exists()) {
				fileDirectory.mkdirs();
				System.out.println("업로드 폴더 생성 : " + fileSave);
			}
			
			fileName = uploadfile.getOriginalFilename();
			member.setProfile_url("/cota/upload/" + fileName);
			uploadfile.transferTo(new File(fileSave + fileName));
			System.out.println("프로필 사진 업로드 성공 : " + fileName);
			
		} else {
			member.setProfile_url("images/no_profile_image.png");
		}
		// 사용자 비밀번호 암호화 (SHA-256)
		SecurityUtil securityUtil = new SecurityUtil();
		String password = securityUtil.encryptSHA256(request.getParameter("password")); // 입력한 password 데이터 oracle로 슝슝 하기전
		
		member.setEmail(email);
		member.setPassword(password);
		member.setNickname(nickname);
		member.setIs_enterprise(is_enterprise);
		
		ms.insert(member); // 받아올 데이터타입 앞에 선언 해줌
		model.addAttribute("member", member);
		System.out.println("checkbox : " + member.getIs_enterprise());
		System.out.println("profile_url : " + member.getProfile_url());
		
		return "member/joinPro"; // jsp

	}
	
	@RequestMapping(value = "loginpage") // 로그인 페이지
	public String loginpage() {
		
		return "member/login";
	}

	@RequestMapping(value = "login") // 로그인 창
	public String login(HttpSession session, Member member, Model model, HttpServletRequest request) {
		
		// 사용자 비밀번호 암호화 (SHA-256)
		SecurityUtil securityUtil = new SecurityUtil();
		String password = securityUtil.encryptSHA256(request.getParameter("password")); // 입력한 password 암호화
		
		System.out.println("pasword : " + member.getPassword());
		System.out.println(password);

		member.setPassword(password);  // 위 암호화 과정 가공한 데이터 set
		
		Member resultMember = ms.select(member);  // oracle과 입력한 값 (암호화값 비교)
		System.out.println(member.getPassword());
		if (resultMember != null) {
				// 성공
				System.out.println(member);
				System.out.println("여기냐 ?");
				
				session.setAttribute("member", resultMember); // session 에 email    jsppage 참고
				return "redirect:main";
			}
		// 실패
		return "member/loginPro";
	}
	
	@RequestMapping(value="logout") // 로그아웃
	public String logout() {
		return "member/logout";
	}
	
	@RequestMapping(value="findPassword") // 비밀번호 찾기
	public String findPassword() {
		return "member/findPassword";
	}
	
	@RequestMapping(value="passwordchange")
	public String passwordchange(HttpSession session, Member member, Model model, HttpServletRequest request) {
		Member emailChk = ms.passwordchange(member);
		
		if(emailChk != null) {
			
			session.setAttribute("member", emailChk);
			return "main/main";
		}
		return "member/findpasswordPro";
	}

}
