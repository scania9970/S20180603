package com.threejo.cota.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService ms;
	
	// 내 정보 수정 화면
	@RequestMapping(value = "myinfo")
	public String myinfo(String email, Model model) {
		Mypage memberInfo = ms.selectMyinfo(email);
		model.addAttribute("member", memberInfo);
		
		return "mypage/myinfo";
	}
	
	// 내 정보 수정 처리
	@RequestMapping(value = "myinfoProc")
	public String myinfoUpdate(@RequestParam("profile_url") MultipartFile uploadfile,
							   @RequestParam("email") String email,
							   @RequestParam("nickname") String nickname,
							   HttpServletRequest request, Model model) throws Exception {
		
		String fileName = "";
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/");
		File fileDirectory = new File(uploadPath);
		
		if (!fileDirectory.exists()) {
			fileDirectory.mkdirs();
			System.out.println("업로드용 폴더 생성 : " + uploadPath);
		}
		
		if (!uploadfile.isEmpty()) {
			fileName = uploadfile.getOriginalFilename();
			uploadfile.transferTo(new File(uploadPath + fileName));
			System.out.println("사진 업로드 성공 : " + fileName);
		}
		
		Mypage member = new Mypage();
		member.setEmail(email);
		member.setNickname(nickname);
		member.setProfile_url("/cota/upload/" + fileName);
		int result = ms.updateMyinfo(member);
		
		if (result <= 0) {
			System.out.println("내 정보 수정 오류 발생!");
		}
		
		return "redirect:myinfo";
	}
}
