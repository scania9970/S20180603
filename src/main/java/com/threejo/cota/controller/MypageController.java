package com.threejo.cota.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Statistics_TODAY;
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
							   @RequestParam("original_url") String original_url,
							   @RequestParam("email") String email,
							   @RequestParam("nickname") String nickname,
							   HttpServletRequest request, Model model) throws Exception {
		
		String fileName = "";
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/");
		File fileDirectory = new File(uploadPath);
		Mypage member = new Mypage();
		
		if (!uploadfile.isEmpty()) {
			if (!fileDirectory.exists()) {
				fileDirectory.mkdirs();
				System.out.println("업로드용 폴더 생성 : " + uploadPath);
			}
			
			fileName = uploadfile.getOriginalFilename();
			uploadfile.transferTo(new File(uploadPath + fileName));
			member.setProfile_url("/cota/upload/" + fileName);
			System.out.println("사진 업로드 성공 : " + fileName);
		} else {
			member.setProfile_url(original_url);
		}
		
		member.setEmail(email);
		member.setNickname(nickname);
		
		int result = ms.updateMyinfo(member);
		
		if (result <= 0) {
			System.out.println("내 정보 수정 오류 발생!");
		}
		
		model.addAttribute("email", email);
		
		return "redirect:myinfo";
	}
	
	// 타자 연습 통계
	@RequestMapping(value = "statisticsTyping")
	public String statisticsTyping(String email, Model model) {
		List<Statistics_TODAY> listStatToday = ms.selectListStatToday(email);
		
		model.addAttribute("email", email);
		model.addAttribute("listStatToday", listStatToday);
		
		return "mypage/statisticsTyping";
	}
}
