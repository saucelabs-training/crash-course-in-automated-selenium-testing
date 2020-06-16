# Selenium 3.14+ doesn't enable certificate checking
import os
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
from selenium import webdriver

sauce_username = os.environ["SAUCE_RDC_USERNAME"]
sauce_access_key = os.environ["SAUCE_RDC_ACCESS_KEY"]
remote_url = "https://ondemand.us-west-1.saucelabs.com/"
capabilities = {
  'browserName': '',
  'browserVersion': '',
  'platformName': 'Android',
  'platformVersion': '9',
  'deviceOrientation': 'portrait',
  'privateDevicesOnly': False,
  'sauce:options': {
    #'screenResolution': '1152x864',
    'username': sauce_username,
    'accessKey': sauce_access_key,
    'name': 'Sample Python Sauce RDC Mobile Browser Test'
    #'build': 'Sample Python Sauce RDC Mobile Browser Test'
  }
}
driver = webdriver.Remote(command_executor=remote_url, desired_capabilities=capabilities)
driver.get("https://www.saucedemo.com")

driver.find_element_by_id('user-name').send_keys('standard_user')
driver.find_element_by_id('password').send_keys('secret_sauce')
driver.find_element_by_css_selector("[type='submit']").click()

actual_result = "passed" if driver.current_url == "https://www.saucedemo.com/inventory.html" else "failed"
driver.execute_script("sauce:job-result=" + actual_result)
driver.quit()