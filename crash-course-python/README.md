# Crash Course in Manual to Automated Testing with Python

## Prerequisites
##### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download [python](https://www.python.org/downloads/)
3. Download and install an [IDE](https://www.jetbrains.com/pycharm/download) or a [text editor](https://www.sublimetext.com/3).
4. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git):
    ```
    git clone https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git
    ```
5. Open the `crash-course-python` directory.
6. Install `pip3`, which will act as our package manager.
7. Run `pip3 install -r requirements.txt` to install the dependencies listed in the `requirements.txt`

<br />

##### Gitpod Setup
1. Signup for a [GitHub Account](https://help.github.com/en/github/getting-started-with-github/signing-up-for-a-new-github-account)
2. Select the button below to open in Gitpod: <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-python"><img src="open-in-gitpod.png" align="middle" title="Open in Gitpod"></a>
3. Sign into Gitpod using your GitHub Account.
4. Allow Gitpod access to GitHub
5. In the upper left corner, select File > Auto Save
6. Open the `crash-course-python` directory.
7. Run `pip3 install -r requirements.txt` to install the dependencies listed in the `requirements.txt`

<br />

## Exercises

##### Use a Selenium WebDriver to open a browser
1. Open `local/local_example.py` in your editor.
2. Uncomment lines `2` through `5`.
3. Uncomment lines `12` through `18`.
4. In a terminal, run the following command:
    ```
    python3 local/local_example.py
    ```
   
<br />

##### Locate elements with Selenium
1. Open `local/local_example.py` in your editor.
2. Write the following lines below `driver.get("https://www.saucedemo.com")`:
    ```
    driver.find_element_by_id('')
    driver.find_element_by_id('')
    driver.find_element_by_css_selector("")
    ```
3. Use Chrome Dev tools to locate and fill in the data for the following elements:
    * the username form
    * the password form
    * the submit button
4. In a terminal, run the following command:
    ```
    python3 local/local_example.py
    ```   

<br />

##### Perform actions on the located elements
1. Open `local/local_example.rb` in your editor.
2. Use the following Selenium Actions in your script:
    ```
    driver.find_element_by_id('').send_keys('')
    driver.find_element_by_id('').send_keys('')
    driver.find_element_by_css_selector("").click()
    ```
3. Use the username and password that displays on the demo site for the `send_keys()` values.
4. In a terminal, run the following command:
    ```
    python3 local/local_example.py
    ```

<br />

##### Write a test assertion to validate test actions
1. Open `local/local_example.rb` in your editor.
2. Write the following lines immediately before `@driver.quit` (line `25`):
    ```
    actual_result = "passed" if driver.current_url == "https://www.saucedemo.com/inventory.html" else "failed"
    print("The test " + actual_result)
    ```
3. In a terminal, run the following command:
    ```
    python3 local/local_example.py
    ```
   
<br />
