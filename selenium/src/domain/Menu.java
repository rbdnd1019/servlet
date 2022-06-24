package domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor
public class Menu {
	private Long sno;
	private Long mno;
	private String name;
	private Long price;
	private String info;
	public Long getSno() {
		return sno;
	}
	public void setSno(Long sno) {
		this.sno = sno;
	}
	public Long getMno() {
		return mno;
	}
	public void setMno(Long mno) {
		this.mno = mno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
