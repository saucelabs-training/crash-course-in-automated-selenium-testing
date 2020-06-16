require 'selenium-webdriver'

#
# 1. Find username and access key here: https://app.saucelabs.com/user-settings and export them as Environment Variables
# for more info visit the documentation: https://wiki.saucelabs.com/display/DOCS/Best+Practice%3A+Use+Environment+Variables+for+Authentication+Credentials
#
sauce_username = ENV['SAUCE_RDC_USERNAME']
sauce_access_key = ENV['SAUCE_RDC_ACCESS_KEY']

#sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.us-west-1.saucelabs.com/wd/hub"
sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.us-west-1.saucelabs.com/wd/hub"

#
# 2. Grab browser and OS combos in capabilities from: https://wiki.saucelabs.com/display/DOCS/Platform+Configurator
#
capabilities = {
    browser_name: 'chrome',
    browser_version: 'latest',
    platform_name: 'Android',
    device_name: 'Samsung.*Galaxy.*',
    platform_version: '8.1',
    screen_resolution: '1152x864',
    name: "Testing Sauce Demo Site",
    build: "Sample Selenium-Ruby Test "
}

@driver = Selenium::WebDriver.for :remote,
                                  url: sauce_url,
                                  desired_capabilities: capabilities

@driver.get "https://www.saucedemo.com/"

@driver.find_element(id: 'user-name').send_keys('standard_user')
@driver.find_element(id: 'password').send_keys('secret_sauce')
@driver.find_element(css: "[type='submit']").click

actual_result = @driver.current_url == "https://www.saucedemo.com/inventory.html" ? "passed" : "failed"
@driver.execute_script("sauce:job-result=#{actual_result}")
@driver.quit
