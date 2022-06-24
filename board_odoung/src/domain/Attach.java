package domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Attach {
	private String uuid;
	private String origin;
	private String path;
	private boolean image;
	private int ord = 1;
	private Long bno;
	
	
	public Attach(String uuid, String origin, String path) {
		super();
		this.uuid = uuid;
		this.origin = origin;
		this.path = path;
	}
	
	public String getParams() throws UnsupportedEncodingException {
		return "?uuid=" + uuid + "&path=" + URLEncoder.encode(path, "utf-8")  + 
				"&origin=" + URLEncoder.encode(origin, "utf-8");
	}



}
