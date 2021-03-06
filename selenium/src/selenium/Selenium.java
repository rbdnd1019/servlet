package selenium;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Selenium {
	private WebDriver driver;
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_RATH = "C:/workspace/devtools/chromedriver.exe";
	
	private String base_url;
	
	public Selenium() {
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_RATH);
		
		driver = new ChromeDriver();
		base_url = "http://localhost:8080/member/login";
		
	}
	
	public void crawl() throws Exception {
		driver.get(base_url);
		
		Thread.sleep(2000);
		driver.findElement(By.cssSelector("input[name='username']")).sendKeys("inadang");
		
		driver.findElement(By.cssSelector("input[name='password']")).sendKeys("q1w2e3123");
		
		Thread.sleep(2000);
		
		driver.findElement(By.cssSelector(".col-sm-12 > button")).click();
		Thread.sleep(2000);
		
		driver.findElement(By.cssSelector(".site-navigation > a[href='/member/notice']")).click();
		Thread.sleep(2000);
		
		String id = driver.findElement(By.id("id")).getAttribute("value");
		String name = driver.findElement(By.id("name")).getAttribute("value");
		String phoneNum = driver.findElement(By.id("phoneNum")).getAttribute("value");
		String email = driver.findElement(By.id("email")).getAttribute("value");
		String nickName = driver.findElement(By.cssSelector("#request div.row input[name='nickName']")).getAttribute("value");
		
		System.out.println("id :: " + id);
		System.out.println("name :: " + name);
		System.out.println("phoneNum :: " + phoneNum);
		System.out.println("email :: " + email);
		System.out.println("nickName :: " + nickName);
		
		driver.close();
		
	}
	public static void main(String[] args) throws Exception {
		new Selenium().crawl();
	}
}
