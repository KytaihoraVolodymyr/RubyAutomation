require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/session'
require 'capybara/dsl'

# Before do
#     @driver = Selenium::WebDriver.for :chrome
# end

# After do
#     @driver.quit
# end

#Capybara.dafault_driver = :selenium
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome