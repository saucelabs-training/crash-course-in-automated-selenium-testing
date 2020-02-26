import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class LocalExampleTest {
    @Test
    public void main () {

//        /** For Local Test Runs **/
//        System.setProperty("webdriver.chrome.driver","src/drivers/mac64/chromedriver80/chromedriver" );
//        WebDriver driver = new ChromeDriver();

        /** For Remote Test Runs I.E. Gitpod **/
        System.setProperty("webdriver.chrome.driver", "/usr/bin/chromedriver");
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--no-sandbox", "--disable-dev-shm-usage");
        WebDriver driver = new ChromeDriver(options);

        driver.navigate().to("https://www.saucedemo.com");
        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.cssSelector("[type='submit']")).click();

        String actualResult = driver.getCurrentUrl().equals("https://www.saucedemo.com/inventory.html") ? "passed" : "failed";
        System.out.println("The Test " + actualResult);

        driver.quit();
    }
}