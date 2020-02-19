#require 'selenium-webdriver'

## For Local Runs ##
#os = "macOS"
#driver_version="chromedriver80"

#Selenium::WebDriver::Chrome::Service.driver_path=('./webdrivers/' + os + '/' + driver_version + '/chromedriver')
#@driver = Selenium::WebDriver.for :chrome

## For Remote Runs i.e. Gitpod ##
#options = Selenium::WebDriver::Chrome::Options.new
#    options.add_argument('--no-sandbox')
#    options.add_argument('--disable-dev-shm-usage')
#Selenium::WebDriver::Chrome::Service.driver_path=('/usr/bin/chromedriver')
#@driver = Selenium::WebDriver.for :chrome, options: options
#
#@driver.get "http://www.saucedemo.com/"







@driver.quit