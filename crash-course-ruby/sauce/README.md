# Example Automated Selenium-Ruby Test with Sauce Labs

### Setting Up a Dev Environment

#### Local Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
2. Download and install an [IDE](https://www.jetbrains.com/ruby/download/#section=mac) or a [text editor](https://www.sublimetext.com/3).
3. (Optional) Download and install and [IDE](https://www.jetbrains.com/ruby/download/#section=mac).
4. [Clone this repository](https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing.git).
5. Open `sauce_example.rb` file

#### Gitpod Setup
1. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>.
2. Click this link to <a href="https://gitpod.io/#https://github.com/saucelabs-training/crash-course-in-automated-selenium-testing/tree/master/crash-course-python" target="_blank">open the project in Gitpod</a>. 
3. Sign into Github & Authorize Gitpod.
4. In the <strong>File</strong> drop down, select "Auto-Save."
5. Open `sauce_example.rb` file

### Running the Test in Sauce Labs

1. If you don't already have a Sauce Labs Account, 
<a href="https://saucelabs.com/sign-up" target="_blank">Sign up for a Trial Sauce Labs Account</a>
2. Locate your <a href="https://app.saucelabs.com/user-settings" target="_blank">Sauce Labs Credentials</a>
3. Export the credentials as [Environment Variables]( https://wiki.saucelabs.com/display/DOCS/Best+Practice%3A+Use+Environment+Variables+for+Authentication+Credentials) using the terminal or command prompt applications:
    * MacOS / Linux [Terminal](https://support.apple.com/guide/terminal/welcome/mac) Example:
        ```
        export SAUCE_USERNAME="<your_sauce_labs_credentials">
        ```
      press enter.
        ```
        export SAUCE_ACCESS_KEY="<your_sauce_labs_access_key">
        ```
      press enter, then test to make sure it worked.
        ```
        echo $SAUCE_ACCESS_KEY
        ```
 
    * Windows [CMD](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands) Example:
        ```
        set SAUCE_USERNAME="<your_sauce_labs_credentials">
        ```
      press enter.
        ```
        set SAUCE_ACCESS_KEY="<your_sauce_labs_access_key">
        ```
      press enter, then test to make sure it worked.
        ```
        echo %SAUCE_ACCESS_KEY%
        ``` 
4. Use the <a href="https://wiki.saucelabs.com/display/DOCS/Platform+Configurator" target="_blank">Platform Configurator</a>
to create your desired combination (for example select the following)
    * W3C
    * PC
    * Windows 10
    * Chrome 78
5. At the bottom of the Platform Configurator page, click the "Ruby" tab to see the resulting code
6. Edit the empty `capabilities` values from line 16-18 with the:
    * `browser_name:`
    * `browser_version:`
    * `platform_name:`
7. In the terminal, or command prompt, type: 
    ```
    ruby sauce_example.rb
    ``` 
    and hit enter.
8. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank">Look at the Dashboard to see the job running</a>

### Adding Extended Debugging and Sauce Performance

1. Go to the <a href="https://docs.saucelabs.com/reference/test-configuration/" target="_blank">Test Configuration Options page</a>
2. Scroll down to the very bottom and find `extendedDebugging` and `enablePerformance`
3. Copy and paste the following below `build` in `sauce_example.rb`:
    ```
    "extendedDebugging": true,
    "enablePerformance": true
    ```
4. In the terminal, or command prompt, type: 
    ```
    ruby sauce_example.rb
    ``` 
    and hit enter.
       
5. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank">Look at the Dashboard to see the job running</a>
