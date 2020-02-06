require 'selenium-webdriver'

# This is an example of using a test framework in order to run multiple tests in parallel
#
RSpec.configure do |config|
  config.before do |example|
    test_name = example.full_description
    build_name = "Kickoff Execution: #{ENV['SAUCE_START_TIME'] || Time.now.to_i}"


    sauce_username = ENV['SAUCE_USERNAME']
    sauce_access_key = ENV['SAUCE_ACCESS_KEY']
    sauce_url = "https://ondemand.saucelabs.com:443/wd/hub"

    # Copy capabilities info from `sauce_example.rb`
    capabilities = {}

    @driver = Selenium::WebDriver.for :remote,
                                     url: sauce_url,
                                     desired_capabilities: capabilities
  end

  config.after do |example|
    result = example.exception ? "failed" : "passed"
    @driver.execute_script("sauce:job-result=#{result}")
    @driver.quit
  end
end
