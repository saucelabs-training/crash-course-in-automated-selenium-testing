require 'selenium-webdriver'

os = "linux"
driver_version="chromedriver80"

Selenium::WebDriver::Chrome::Service.driver_path=('./webdrivers/' + os + '/' + driver_version + '/chromedriver')

@driver = Selenium::WebDriver.for :chrome
@driver.get "http://www.saucedemo.com/"

@driver.find_element(id: 'user-name').send_keys('standard_user')
@driver.find_element(id: 'password').send_keys('secret_sauce')
@driver.find_element(css: "[type='submit']").click

actual_result = @driver.current_url == "https://www.saucedemo.com/inventory.html" ? "passed" : "failed"
puts "The test #{actual_result}"
@driver.quit