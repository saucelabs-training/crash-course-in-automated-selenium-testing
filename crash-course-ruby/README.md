# Crash Course in Manual to Automated Testing with Ruby

## Prerequisites
##### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download [ruby](https://www.ruby-lang.org/en/downloads/)
3. Download and install an [IDE](https://www.jetbrains.com/ruby/download/) or a [text editor](https://www.sublimetext.com/3).
4. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git):
    ```
    git clone https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git
    ```
5. Open the `crash-course-ruby` directory.
6. Run `gem bundle install` to install a dependency bundler application
7. Run `bundle install` to install the dependencies listed in the `Gemfile`

<br />

##### Gitpod Setup
1. Signup for a [GitHub Account](https://help.github.com/en/github/getting-started-with-github/signing-up-for-a-new-github-account)
2. Select the button to open in Gitpod: <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-ruby"><img src="open-in-gitpod.png" align="middle" title="Open in Gitpod"></a>
3. Sign into Gitpod using your GitHub Account.
4. Allow Gitpod access to GitHub
5. In the upper left corner, select File > Auto Save
6. Open the `crash-course-ruby` directory.
7. Run `gem bundle install` to install a dependency bundler application
8. Run `bundle install` to install the dependencies listed in the `Gemfile`

<br />

## Exercises

##### Use a Selenium WebDriver to open a browser
1. Open `local/local_example.rb` in your editor.
2. Uncomment lines `1`, and `15`.
3. Uncomment line `25`.
4. In a terminal, run the following command:
    ```
    ruby local/local_example.rb
    ```
   
<br />

##### Locate elements with Selenium
1. Open `local/local_example.rb` in your editor.
2. Write the following lines below `@driver.get "http://www.saucedemo.com/"`:
    ```
    @driver.find_element(id: '')
    @driver.find_element(id: '')
    @driver.find_element(css: "")
    ```
3. Use Chrome Dev tools to locate and fill in the data for the following elements:
    * the username form
    * the password form
    * the submit button
4. In a terminal, run the following command:
    ```
    ruby local/local_example.rb
    ```   

<br />

##### Perform actions on the located elements
1. Open `local/local_example.rb` in your editor.
2. Use the following Selenium Actions in your script:
    ```
    @driver.find_element(id: '').send_keys('')
    @driver.find_element(id: '').send_keys('')
    @driver.find_element(css: "").click
    ```
3. Use the username and password that displays on the demo site for the `send_keys()` values.
4. In a terminal, run the following command:
    ```
    ruby local/local_example.rb
    ```

<br />

##### Write a test assertion to validate test actions
1. Open `local/local_example.rb` in your editor.
2. Write the following lines immediately before `@driver.quit` (line `25`):
   ```
   actual_result = @driver.current_url == "https://www.saucedemo.com/inventory.html" ? "passed" : "failed"
   puts "The test #{actual_result}"
   ```
3. In a terminal, run the following command:
    ```
    ruby local/local_example.rb
    ```
   
<br />