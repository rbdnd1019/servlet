package ex01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class Input2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 화면 담당
		req.getRequestDispatcher("/WEB-INF/jsp/member/input.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로직 담당
		// post 방식으로 parameter 전송시 req의 header에 포함시켜 전송(1byte 분할 방식)이라서 한글이 깨짐
		
		// req의 인코딩타입이 무엇으로 오는가?
		req.setCharacterEncoding("utf-8");
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		
		String[] subjects = req.getParameterValues("subject");
		if(subjects != null)
		for(String subject : subjects) {
			System.out.println("선택한 과목 : " + subject);
		}
		
		System.out.println(id);
		System.out.println(pw);
		
		req.getRequestDispatcher("/WEB-INF/jsp/member/input.jsp").forward(req, resp);
	}
}
