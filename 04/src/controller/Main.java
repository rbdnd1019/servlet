package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Servlet lifecycle
public class Main extends HttpServlet{
	int i; // 0
	
	@Override  
	public void init() throws ServletException {
		System.out.println("init() :: " + ++i);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("serveice() :: " + ++i);
		resp.setContentType("text/html; charset=utf-8");
		resp.getWriter().print("<h1>hello world</h1>");
		resp.getWriter().print("<h1>μλ μΈμ</h1>");
	}

	@Override
	public void destroy() {
		System.out.println("destroy() :: " + ++i);
	}

	// init, service, destory
}
