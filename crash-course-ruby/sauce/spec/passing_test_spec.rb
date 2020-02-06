require 'spec_helper'

describe 'Passing Test' do
  it 'logs in successfully' do

    # 1. Navigate
    @driver.get("<URL>")

    # 2. Fill out Form
    @driver.find_element("<USERNAME LOCATOR>").send_keys("<USER VALUE>")
    @driver.find_element("<PASSWORD LOCATOR>").send_keys("<PASSWORD VALUE>")
    @driver.find_element("<SUBMIT BUTTON LOCATOR>").click

    # 3. Validate page is correct
    expect(@driver.current_url).to eq "<EXPECTED URL>"
  end
end
