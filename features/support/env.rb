require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'site_prism'
require 'page_creator'
require 'pry'

browser = ENV['BROWSER'].to_sym
# Create reports folder if one doesn't exists
Dir.mkdir(File.join(Dir.pwd, 'reports')) unless File.directory?('reports')

Capybara.configure do |config|
  config.default_driver = browser
  config.default_max_wait_time = 10
  # config.app_host = 'https://www.google.co.uk'
  # config.match = :prefer_exact
  # config.ignore_hidden_elements = false
  # config.visible_text_only = true
  # config.default_selector = :css
  # config.run_server = false
end

# Start a new Driver instance
Capybara.register_driver browser do |app|
  Capybara::Selenium::Driver.new(app, browser: browser)
end

# Enable Capybara's implicit wait method
SitePrism.configure do |config|
  config.use_implicit_waits = true
end
