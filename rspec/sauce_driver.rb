require "selenium/webdriver"
 
module SauceDriver
  class << self
    def sauce_endpoint
      "http://ndmanvar:69718572-dfdd-438b-b4ac-b177f59f68ee@ondemand.saucelabs.com:80/wd/hub"
    end
 
    def caps
      caps = {
        :platform => "Mac OS X 10.9",
        :browserName => "Chrome",
        :version => "31"
      }
    end
 
    def new_driver
      Selenium::WebDriver.for :remote, :url => sauce_endpoint, :desired_capabilities => caps
    end
  end
end 