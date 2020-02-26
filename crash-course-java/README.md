# Crash Course in Manual to Automated Testing with Java

## Prerequisites
##### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download [JDK](https://www.oracle.com/java/technologies/javase-downloads.html)
3. Download [Maven](https://maven.apache.org/download.cgi) 
4. Download and install an [IDE](https://www.jetbrains.com/idea/download/) or a [text editor](https://www.sublimetext.com/3).
5. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git):
    ```
    git clone https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git
    ```
5. Open the `crash-course-java` directory.
6. Run `mvn dependency:resolve` to install the dependencies.
7. Run the following command to run your test:
    ```
    mvn test -D=LocalExampleTest
    ```
<br />

##### Gitpod Setup
1. Signup for a [GitHub Account](https://help.github.com/en/github/getting-started-with-github/signing-up-for-a-new-github-account)
2. Select the button to open in Gitpod: <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-java"><img src="open-in-gitpod.png" align="middle" title="Open in Gitpod"></a>
3. Sign into Gitpod using your GitHub Account.
4. Allow Gitpod access to GitHub
5. In the upper left corner, select File > Auto Save
6. Open the `crash-course-java` directory.
7. Run `mvn dependency:resolve` to install the dependencies.
8. Run the following command to run your test:
    ```
    mvn test -D=LocalExampleTest
    ```
<br />

## Exercises

##### Use a Selenium WebDriver to open a browser
1. Open `src/test/java/LocalExampleTest.java` in your editor.
2. Uncomment lines `1` to `19`.
3. Uncomment lines `15` t0 `31`.
4. In a terminal, run the following command:
    ```
    mvn test -D=LocalExampleTest
    ```
   
<br />

##### Locate elements with Selenium
1. Open `src/test/java/LocalExampleTest.java` in your editor.
2. Write the following lines below `driver.navigate().to("https://www.saucedemo.com");"`:
    ```
    driver.findElement(By.id(""));
    driver.findElement(By.id(""));
    driver.findElement(By.cssSelector(""));
    ```
3. Use Chrome Dev tools to locate and fill in the data for the following elements:
    * the username form
    * the password form
    * the submit button
4. In a terminal, run the following command:
    ```
    mvn test -D=LocalExampleTest
    ```   

<br />

##### Perform actions on the located elements
1. Open `src/test/java/LocalExampleTest.java` in your editor.
2. Use the following Selenium Actions in your script:
    ```
    driver.findElement(By.id("")).sendKeys("");
    driver.findElement(By.id("")).sendKeys("");
    driver.findElement(By.cssSelector("")).click();
    ```
3. Use the username and password that displays on the demo site for the `.sendKeys("")` values.
4. In a terminal, run the following command:
    ```
    mvn test -D=LocalExampleTest
    ```

<br />

##### Write a test assertion to validate test actions
1. Open `src/test/java/LocalExampleTest.java` in your editor.
2. Write the following lines immediately before `driver.quit()` (line `29`):
   ```
   String actualResult = driver.getCurrentUrl().equals("https://www.saucedemo.com/inventory.html") ? "passed" : "failed";
   System.out.println("The Test " + actualResult);
   ```
3. In a terminal, run the following command:
    ```
    mvn test -D=LocalExampleTest
    ```
   
<br />