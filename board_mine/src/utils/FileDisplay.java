package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display")
public class FileDisplay extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uuid = req.getParameter("uuid");
		String path = req.getParameter("path");
		
		String saveDir = "D:\\upload";
		
		File file = new File(new File(saveDir, path), uuid) ;
		String mime = getServletContext().getMimeType(file.toString());

		resp.setContentType(mime);
		
		FileInputStream fis = new FileInputStream(file);
		OutputStream os = resp.getOutputStream();
		
		int b;
		byte[] bytes = new byte[8192];
		while((b = fis.read(bytes, 0, bytes.length)) != -1) {
			os.write(bytes, 0, b);
		}
		fis.close();
		os.close();
	}

	
}
