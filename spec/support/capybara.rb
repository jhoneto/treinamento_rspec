require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.app_host = "http://lvh.me"

client = Selenium::WebDriver::Remote::Http::Default.new

caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps[:unexpectedAlertBehaviour] = 'accept'
caps[:javascriptEnable] = false

options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized'])

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: caps,
    http_client: client,
    options: options
  )
end

Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.always_include_port = true
end

Capybara.default_max_wait_time = 20

