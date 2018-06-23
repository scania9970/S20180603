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

	@RequestMapping(value = "joinpage") // �쉶�썝媛��엯 �럹�씠吏�
	public String joinpage() {

		return "member/join";
	}

	@RequestMapping(value = "insertmb", method = RequestMethod.POST) // �뿤�뜑 二쇱냼 �쉶�썝媛��엯 (insert)
	public String insertmb(@RequestParam("profile_url") MultipartFile uploadfile,
						   @RequestParam("email") String email,
						   @RequestParam("nickname") String nickname,
						   boolean is_enterprise,       // boolean�� �삁�쇅
						   HttpServletRequest request, Model model) throws Exception {
		
		String fileName = "";
		String fileSave = request.getSession().getServletContext().getRealPath("/upload/");
		File fileDirectory = new File(fileSave);
		Member member = new Member();
		
		if (!uploadfile.isEmpty()) {
			
			if (!fileDirectory.exists()) {
				fileDirectory.mkdirs();
				System.out.println("�뾽濡쒕뱶 �뤃�뜑 �깮�꽦 : " + fileSave);
			}
			
			fileName = uploadfile.getOriginalFilename();
			member.setProfile_url("/cota/upload/" + fileName);
			uploadfile.transferTo(new File(fileSave + fileName));
			System.out.println("�봽濡쒗븘 �궗吏� �뾽濡쒕뱶 �꽦怨� : " + fileName);
			
		} else {
			member.setProfile_url("images/no_profile_image.png");
		}
		// �궗�슜�옄 鍮꾨�踰덊샇 �븫�샇�솕 (SHA-256)
		SecurityUtil securityUtil = new SecurityUtil();
		String password = securityUtil.encryptSHA256(request.getParameter("password")); // �엯�젰�븳 password �뜲�씠�꽣 oracle濡� �뒡�뒡 �븯湲곗쟾
		
		member.setEmail(email);
		member.setPassword(password);
		member.setNickname(nickname);
		member.setIs_enterprise(is_enterprise);
		
		ms.insert(member); // 諛쏆븘�삱 �뜲�씠�꽣���엯 �븵�뿉 �꽑�뼵 �빐以�
		model.addAttribute("member", member);
		System.out.println("checkbox : " + member.getIs_enterprise());
		System.out.println("profile_url : " + member.getProfile_url());
		
		return "member/joinPro"; // jsp

	}
	
	@RequestMapping(value = "loginpage") // 濡쒓렇�씤 �럹�씠吏�
	public String loginpage() {
		
		return "member/login";
	}

	@RequestMapping(value = "login") // 濡쒓렇�씤 李�
	public String login(HttpSession session, Member member, Model model, HttpServletRequest request) {
		
		// �궗�슜�옄 鍮꾨�踰덊샇 �븫�샇�솕 (SHA-256)
		SecurityUtil securityUtil = new SecurityUtil();
		String password = securityUtil.encryptSHA256(request.getParameter("password")); // �엯�젰�븳 password �븫�샇�솕
		
		System.out.println("pasword : " + member.getPassword());
		System.out.println(password);

		member.setPassword(password);  // �쐞 �븫�샇�솕 怨쇱젙 媛�怨듯븳 �뜲�씠�꽣 set
		
		Member resultMember = ms.select(member);  // oracle怨� �엯�젰�븳 媛� (�븫�샇�솕媛� 鍮꾧탳)
		System.out.println(member.getPassword());
		if (resultMember != null) {
				// �꽦怨�
				System.out.println(member);
				System.out.println("�뿬湲곕깘 ?");
				
				session.setAttribute("member", resultMember); // session 에 email    jsppage 참고
				return "redirect:main";
			}
		// �떎�뙣
		return "member/loginPro";
	}
	
	@RequestMapping(value="logout") // 濡쒓렇�븘�썐
	public String logout() {
		return "member/logout";
	}
	
	@RequestMapping(value="findPassword") // 鍮꾨�踰덊샇 李얘린
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
