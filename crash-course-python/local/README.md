# Example Automated Selenium-Python Test
### Setting Up a Dev Environment

#### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download [python](https://www.python.org/downloads/)
3. Download and install an [IDE](https://www.jetbrains.com/pycharm/download/) or a [text editor](https://www.sublimetext.com/3).
4. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git).
5. Open `local_example.py` file

#### Gitpod Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>.
2. Click this link to <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-python" target="_blank">open the project in Gitpod</a>. 
3. Sign into Github & Authorize Gitpod.
4. In the <strong>File</strong> drop down, select "Auto-Save."
5. Open `local_example.py` file

### Running the Test
1. Change the `os` variable to match whatever system you're running for example
    ```
   os_version = "mac64"
    ```
   also, if you're using Windows, you'll need to add `.exe` at the end of the webdriver path like so:
   ```
   driver = webdriver.Chrome(
   './webdrivers/' + os_version + '/' + driver_version + '/chromedriver.exe')
   ```
2. In the terminal, or command prompt, type: 
    ```
    python local_example.py
    ``` 
    and hit enter.
3. You should see the following output:
    ```
    The test passed
    ```