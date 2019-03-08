require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.default_driver = :selenium
Capybara.app_host = "http://teste.local"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end

Capybara.configure do |config|
  config.always_include_port = true
end