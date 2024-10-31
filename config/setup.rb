require 'selenium-webdriver'

def setup_driver
  Selenium::WebDriver.for :chrome
end
