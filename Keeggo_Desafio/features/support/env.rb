require 'rubygems'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

World(Helper)

Capybara.configure do |config|
    #selenium       #selenium_chrome     #selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.advantageonlineshopping.com'
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    
end

