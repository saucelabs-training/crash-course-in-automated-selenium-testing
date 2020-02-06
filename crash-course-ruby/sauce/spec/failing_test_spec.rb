require 'spec_helper'

describe 'Failing Test' do
  it 'does not log in' do
    # 1. Copy/paste passing test
    # 2. Change USER_VALUE to "locked_out_user"

    @driver.get("<URL>")

    @driver.find_element("<USERNAME LOCATOR>").send_keys("<USER VALUE>")
    @driver.find_element("<PASSWORD LOCATOR>").send_keys("<PASSWORD VALUE>")
    @driver.find_element("<SUBMIT BUTTON LOCATOR>").click

    expect(@driver.current_url).to eq "<EXPECTED URL>"
  end
end
