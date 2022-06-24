package controller.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import domain.Member;
import service.MemberService;

@WebServlet("/member/ProcAuth")
public class ProcAuth extends HttpServlet{
	private MemberService memberService = MemberService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 파라미터 처리
		String authToken = req.getParameter("authToken");
		String id = req.getParameter("id");
		
		System.out.println(authToken);
		System.out.println(id);
		
		Member member = memberService.get(id);
		String msg = "";
		member.setAuth(BCrypt.checkpw(member.getAuthToken(), authToken) ? "1" : "0");
		if(member.getAuth().equals("1")) {
			memberService.updateAuth(member);
			msg = "이메일 인증이 성공적으로 완료되었습니다";
		}
		else {
			msg = "이메일 인증에 실패했습니다.";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("href", req.getContextPath());
		req.getRequestDispatcher("/WEB-INF/jsp/common/msg.jsp").forward(req, resp);
	
	}
}
