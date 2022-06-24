package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @로 시작하는건 annotation
@WebServlet("/test")
public class Test extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()");
	}
	
//	@Override
//	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
//		System.out.println("service()");
//	}
	
}
