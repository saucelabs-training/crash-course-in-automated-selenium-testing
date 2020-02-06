# Example Automated Selenium-Ruby Test
### Setting Up a Dev Environment

#### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download [ruby](https://www.ruby-lang.org/en/downloads/)
3. Download and install an [IDE](https://www.jetbrains.com/ruby/download/) or a [text editor](https://www.sublimetext.com/3).
4. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git).
5. Open `local_example.rb` file

#### Gitpod Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>.
2. Click this link to <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-python" target="_blank">open the project in Gitpod</a>. 
3. Sign into Github & Authorize Gitpod.
4. In the <strong>File</strong> drop down, select "Auto-Save."
5. Open `sauce_example.rb` file

### Running the Test
1. Change the `os` variable to match whatever system you're running for example
    ```
   os = "mac64"
    ```
   also, if you're using Windows, you'll need to add `.exe` at the end of the webdriver path like so:
   ```
   Selenium::WebDriver::Chrome::Service
   .driver_path=('./webdrivers/' + os + '/' + driver_version + '/chromedriver.exe')
   ```
2. In the terminal, or command prompt, type: 
    ```
    ruby local_example.rb
    ``` 
    and hit enter.
3. You should see the following output:
    ```
    The test passed
    ```