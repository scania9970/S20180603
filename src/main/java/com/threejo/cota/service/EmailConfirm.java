package com.threejo.cota.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

public class EmailConfirm {
	
	public String connectEmail(String email, int type){
		String to1 = email; // 인증위해 사용자가 입력한 이메일주소
		String host = "smtp.gmail.com"; // smtp 서버
		String subject = ""; // 보내는 제목 설정
		String fromName = "cota"; // 보내는 이름 설정
		String from = "misoplanmail@gmail.com"; // 보내는 사람(구글계정)
		String authNum = ""; // 인증번호 위한 난수 발생부분
		String content = ""; // 메시지
		
		if (type == 0) {
			subject = "cota 회원가입 이메일 인증번호 발송";
			authNum = EmailConfirm.authNum(0);
			content =
				"<img alt='COTA' src='https://i.imgur.com/GRMdaaM.png'>" +
				"<p>안녕하세요. 'cota' 입니다.</p>" +
				"<p>귀하의 이메일 주소 인증번호는 아래와 같습니다. 해당 번호를 입력란에 입력해주세요.</p>" +
				"<h2>인증번호 [" + authNum + "]</h2>" +
				"<p>감사합니다.</p>";
		} else {
			subject = "cota 계정 새 비밀번호 발송";
			authNum = EmailConfirm.authNum(1);
			content =
				"<img alt='미소플랜' src='https://i.imgur.com/HftX1AR.png'>" +
				"<p>안녕하세요. 'cota' 입니다.</p>" +
				"<p>귀하의 새로운 비밀번호는 아래와 같습니다. 로그인 후 반드시 비밀번호를 변경해 주세요.</p>" +
				"<h2>이메일 주소 [" + email + "]</h2>" +
				"<h2>비밀번호 [" + authNum + "]</h2>" +
				"<p>감사합니다.</p>";
		}
		
        // SMTP 이용하기 위해 설정해주는 설정값들
		try{
			Properties props=new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty
	                       ("mail.smtp.socketFactory.class",
	                        "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port","465");
			props.put("mail.smtp.user",from);
			props.put("mail.smtp.auth","true");
			
			Session mailSession 
	           = Session.getInstance(props,new javax.mail.Authenticator() {
				    protected PasswordAuthentication getPasswordAuthentication() {
					    return new PasswordAuthentication("misoplanmail@gmail.com","misoplan@gg"); // gmail계정
				    }
	           });
			
			Message msg = new MimeMessage(mailSession);
			InternetAddress []address1 = { new InternetAddress(to1) };
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "utf-8", "B")));
			msg.setRecipients(Message.RecipientType.TO, address1); // 받는사람 설정
			msg.setSubject(subject); // 제목설정
			msg.setSentDate(new java.util.Date()); // 보내는 날짜 설정
			msg.setContent(content, "text/html; charset=utf-8"); // 내용설정
			
			Transport.send(msg); // 메일보내기
		} catch(MessagingException e){
			e.printStackTrace();
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return authNum;
	}

    // 난수발생 function
	public static String authNum(int type){
		StringBuffer buffer=new StringBuffer();
		
		if (type == 0) {
			for(int i = 0; i <= 5; i++){
				/*int num = i;*/
				int num = (int)(Math.random() * 9+1);
				buffer.append(num);
			}
		} else {
			for(int i = 0; i <= 17; i++){
				int num = (int)(Math.random() * 9+1);
				buffer.append(num);
			}
		}
		
		return buffer.toString();
	}
	
}
