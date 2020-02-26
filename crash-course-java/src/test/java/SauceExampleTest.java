import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.MutableCapabilities;


import java.net.MalformedURLException;
import java.net.URL;


public class SauceExampleTest {
    @Test
    public void main () throws MalformedURLException {

        String sauceUserName = System.getenv("SAUCE_USERNAME");
        String sauceAccessKey = System.getenv("SAUCE_ACCESS_KEY");
        String sauceURL = "https://ondemand.saucelabs.com/wd/hub";

        MutableCapabilities sauceOpts = new MutableCapabilities();
        sauceOpts.setCapability("username", sauceUserName);
        sauceOpts.setCapability("accessKey", sauceAccessKey);
        sauceOpts.setCapability("name", "SauceExampleTest - Java");

        MutableCapabilities capabilities = new MutableCapabilities();
        capabilities.setCapability("sauce:options", sauceOpts);
        capabilities.setCapability("browserName", "chrome");
        capabilities.setCapability("platformVersion", "Windows 10");
        capabilities.setCapability("browserVersion", "latest");

        WebDriver driver = new RemoteWebDriver(new URL(sauceURL), capabilities);

        driver.navigate().to("https://www.saucedemo.com");
        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.cssSelector("[type='submit']")).click();

        String actualResult = driver.getCurrentUrl().equals("https://www.saucedemo.com/inventory.html") ? "passed" : "failed";
        ((JavascriptExecutor)driver).executeScript("sauce:job-result=" + actualResult);
        System.out.println("The Test " + actualResult);

        driver.quit();
    }
}
