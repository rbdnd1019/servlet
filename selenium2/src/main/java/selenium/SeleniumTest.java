package selenium;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumTest {
	private WebDriver driver;
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_RATH = "C:/workspace/devtools/chromedriver.exe";
	
	private String base_url;
	
	public SeleniumTest() {
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_RATH);
		
		driver = new ChromeDriver();
		base_url = "http://localhost:8080/member/notice";
	}
	
	public static void main(String[] args) throws InterruptedException {
        SeleniumTest test = new SeleniumTest();
        test.crawl();
    }

    public void crawl() throws InterruptedException{
        driver.get(base_url);
        
        

        /* 페이지 소스 */
        System.out.println((driver.getPageSource()));

        /* td 태그 내에 a 태그를 저장하기 위한 배열 */
        List<WebElement> list = driver.findElements(By.cssSelector("td a"));
        list.forEach(link->{
            System.out.println(link.getText());
        });


    }
    static By select(String selector) {
        return By.cssSelector(selector);
    }	
	
}
