package com.threejo.cota.controller;

import java.io.File;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.threejo.cota.model.Career;
import com.threejo.cota.model.Member;
import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Statistics_TODAY;
import com.threejo.cota.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService ms;
	
	// 내 정보 수정 화면
	@RequestMapping(value = "myinfo")
	public String myinfo(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("member");
		
		Mypage memberInfo = ms.selectMyinfo(member.getEmail());
		model.addAttribute("member", memberInfo);
		
		return "mypage/myinfo";
	}
	
	// 내 정보 수정 처리
	@RequestMapping(value = "myinfoUpdate", method = RequestMethod.POST)
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
		
		return "redirect:myinfo";
	}
	
	// 포트폴리오 수정 화면
	@RequestMapping(value = "myinfoPort")
	public String myinfoPort(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("member");
		Portfolio portfolio = ms.selectMyinfoPort(member.getEmail());
		List<Career> career = ms.selectMyinfoCareer(member.getEmail());
		
		model.addAttribute("portfolio", portfolio);
		model.addAttribute("listCareer", career);
		
		return "mypage/myinfoPort";
	}
	
	// 포트폴리오 수정 처리
	@RequestMapping(value = "myinfoPortUpdate", method = RequestMethod.POST)
	public String myinfoUpdate(@RequestParam("image_url") MultipartFile uploadfile,
							   HttpServletRequest request, Model model) throws Exception {
		
		Portfolio newPortfolio = new Portfolio();
		newPortfolio.setEmail(request.getParameter("email"));
		Date birth = Date.valueOf(request.getParameter("birth"));
		newPortfolio.setBirth(birth);

		String fileName = "";
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/");
		File fileDirectory = new File(uploadPath);

		if (!uploadfile.isEmpty()) {
			if (!fileDirectory.exists()) {
				fileDirectory.mkdirs();
				System.out.println("업로드용 폴더 생성 : " + uploadPath);
			}

			fileName = uploadfile.getOriginalFilename();
			uploadfile.transferTo(new File(uploadPath + fileName));
			newPortfolio.setImage_url("/cota/upload/" + fileName);
			System.out.println("사진 업로드 성공 : " + fileName);
		} else {
			newPortfolio.setImage_url(request.getParameter("original_url"));
		}

		newPortfolio.setJob(request.getParameter("job"));
		newPortfolio.setIntroduction(request.getParameter("introduction"));

		int result = 0;
		Portfolio portfolio = ms.selectMyinfoPort(request.getParameter("email"));
		
		if (portfolio == null) {
			result = ms.insertMyinfoPort(newPortfolio);
		} else {
			result = ms.updateMyinfoPort(newPortfolio);
		}

		if (result <= 0) {
			System.out.println("포트폴리오 정보 수정 실패!");
		}
		
		
		
		List<Career> career = ms.selectMyinfoCareer(request.getParameter("email"));
		
		if (career == null) {
			result = ms.insertMyinfoCareer(career);
		}
		
		return "redirect:myinfoPort";
	}
	
	// 타자 연습 통계
	@RequestMapping(value = "statisticsTyping")
	public String statisticsTyping(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("member");
		List<Statistics_TODAY> listStatToday = ms.selectListStatToday(member.getEmail());
		
		model.addAttribute("email", member.getEmail());
		model.addAttribute("listStatToday", listStatToday);
		
		return "mypage/statisticsTyping";
	}
}
