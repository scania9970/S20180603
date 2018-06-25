package com.threejo.cota.controller;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import com.threejo.cota.model.Project;
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
	public String myinfoPort(HttpSession session, HttpServletRequest request, Model model) {
		Member member = (Member)session.getAttribute("member");
		Portfolio portfolio = ms.selectMyinfoPort(member.getEmail());
		List<Career> career = ms.selectMyinfoCareer(member.getEmail());
		List<Project> project = ms.selectMyinfoProject(member.getEmail());
		
		request.setAttribute("portfolioRequest", portfolio);
		
		model.addAttribute("portfolio", portfolio);
		model.addAttribute("listCareer", career);
		model.addAttribute("listProject", project);
		
		return "mypage/myinfoPort";
	}
	
	// 포트폴리오 수정 처리
	@RequestMapping(value = "myinfoPortUpdate", method = RequestMethod.POST)
	public String myinfoUpdate(@RequestParam("image_url") MultipartFile uploadfile,
							   @RequestParam("project_url") MultipartFile uploadfile_project,
							   HttpServletRequest request, Model model) throws Exception {
		
		// 포트폴리오 항목
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
		newPortfolio.setIs_search(Integer.parseInt(request.getParameter("is_search")));
		newPortfolio.setIs_visible(Integer.parseInt(request.getParameter("is_visible")));
		newPortfolio.setColor_font("#" + request.getParameter("color_font"));
		newPortfolio.setColor_back("#" + request.getParameter("color_back"));

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
		
		// 경력 항목
		List<Career> career = ms.selectMyinfoCareer(request.getParameter("email"));
		int careerCount = Integer.parseInt(request.getParameter("input_career_count"));

		if (career.size() < careerCount) {
			while (career.size() < careerCount) {
				Career newCareer = new Career();
				newCareer.setEmail(request.getParameter("email"));
				newCareer.setCompany(request.getParameter("company" + careerCount));
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date careerDate = transFormat.parse(request.getParameter("date_start" + careerCount));
				newCareer.setDate_start(careerDate);
				careerDate = transFormat.parse(request.getParameter("date_end" + careerCount));
				newCareer.setDate_end(careerDate);
				newCareer.setRank(request.getParameter("rank" + careerCount));
				newCareer.setDetail(request.getParameter("detail" + careerCount));

				careerCount--;
				result = ms.insertMyinfoCareer(newCareer);

				if (result <= 0) {
					System.out.println("경력 정보 삽입 실패!");
				}
			}
		}
		
		// 프로젝트 항목
		List<Project> project = ms.selectMyinfoProject(request.getParameter("email"));
		int projectCount = Integer.parseInt(request.getParameter("input_project_count"));

		if (project.size() < projectCount) {
			while (project.size() < projectCount) {
				Project newProject = new Project();
				newProject.setEmail(request.getParameter("email"));
				newProject.setTitle(request.getParameter("title" + projectCount));
				newProject.setContent(request.getParameter("content" + projectCount));
				
				if (!uploadfile_project.isEmpty()) {
					if (!fileDirectory.exists()) {
						fileDirectory.mkdirs();
						System.out.println("업로드용 폴더 생성 : " + uploadPath);
					}

					fileName = uploadfile_project.getOriginalFilename();
					uploadfile_project.transferTo(new File(uploadPath + fileName));
					newProject.setProject_url("/cota/upload/" + fileName);
					System.out.println("사진 업로드 성공 : " + fileName);
				} else {
					newProject.setProject_url("images/no_profile_image.png");
				}
				
				newProject.setProject_date(request.getParameter("project_date" + projectCount));

				projectCount--;
				result = ms.insertMyinfoProject(newProject);

				if (result <= 0) {
					System.out.println("프로젝트 정보 삽입 실패!");
				}
			}
		}
		
		return "redirect:myinfoPort";
	}
	
	// 비밀번호 변경 화면
	@RequestMapping(value = "mypagePassChange")
	public String mypagePassChange(HttpSession session, String email, Model model) {
		Member member = (Member)session.getAttribute("member");
		Mypage memberInfo = ms.selectMyinfo(member.getEmail());
		
		model.addAttribute("member", memberInfo);
		
		return "mypage/mypagePassChange";
	}
	
	// 비밀번호 변경 처리
	@RequestMapping(value = "updateMypagePass", method = RequestMethod.POST)
	public String updateMypagePass(String email, String password, Model model) {
		// 사용자 비밀번호 암호화 (SHA-256)
		SecurityUtil securityUtil = new SecurityUtil();
		String passwordSec = securityUtil.encryptSHA256(password);
		
		int result = ms.updateMypagePass(email, passwordSec);
		
		if (result <= 0) {
			System.out.println("비밀번호 변경 실패");
		}
		
		return "redirect:mypagePassChange";
	}
	
	// 회원 탈퇴 화면
	@RequestMapping(value = "mypageMemberLeave")
	public String mypageMemberLeave(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("member");
		Mypage memberInfo = ms.selectMyinfo(member.getEmail());
		
		model.addAttribute("member", memberInfo);
		
		return "mypage/mypageMemberLeave";
	}
	
	@RequestMapping(value = "updateMypageLeave")
	public String mypageMemberLeave(HttpSession session, String email, Model model) {
		int result = ms.updateMypageLeave(email);
		
		if (result <= 0) {
			System.out.println("회원 탈퇴 처리 실패");
		} else {
			session.invalidate();
		}
		
		return "redirect:main";
	}
	
	// 타자 연습 통계
	@RequestMapping(value = "statisticsTyping")
	public String statisticsTyping(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("member");
		List<Statistics_TODAY> listStatToday = ms.selectListStatToday(member.getEmail());
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		String jsonGraph = "[";
		
		for (int i=0; i < listStatToday.size(); i++) {
			String dateString = transFormat.format(listStatToday.get(i).getToday_date());
			jsonGraph += "{'day':'" + dateString + "'," + 
					"'speed':'" + listStatToday.get(i).getSpeed() + "'," + 
					"'accuracy':'" + listStatToday.get(i).getAccuracy() + "'," + 
					"'interrupt':'" + listStatToday.get(i).getInterrupt() + "'},"; 
		}
		
		jsonGraph += "]";
		
		model.addAttribute("email", member.getEmail());
		model.addAttribute("listStatToday", listStatToday);
		model.addAttribute("morrisGraph", jsonGraph);
		
		return "mypage/statisticsTyping";
	}
}
