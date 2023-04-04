require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'site_prism'
require 'capybara-screenshot/cucumber'
require 'rubyXL'
require 'rubyXL/convenience_methods'

starting = Time.now

def options
    Selenium::WebDriver::Chrome::Options.new(args: %w[widow-size=1800,1000])
end

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
    browser = (ENV['BROWSER'] || 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser)
end

BROWSER = Capybara.current_session.driver.browser.to_s

Capybara.save_path = "./features/failure_screenshots"

Before do |scenario|
    puts 'Before test'
    starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
end

After do
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    result = ending - starting

    puts "Test start #{starting}"
    puts "Test end #{ending}"
    puts "Test time #{result}"
    puts 'After test'
end