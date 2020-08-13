require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'faker'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

require_relative 'helper.rb'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Pages)
World(Helper)

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      clear_local_storage: true,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => { 'args' => ['--disable-web-security',
                                        '--incognito',
                                        '--disable-cache',
                                        'start-maximized',
                                        '--disable-print-preview',
                                        '--repl',
                                        '--disable-infobars',
                                        'window-size=1024, 768',
                                        '--no-sandbox'] }
      )
    )
  elsif BROWSER.eql?('chrome_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => { 'args' => ['--incognito',
                                        '--headless',
                                        '--disable-web-security',
                                        'disable-gpu',
                                        '--disable-cache',
                                        '--repl',
                                        '--disable-infobars', 
                                        'window-size=1024, 768',
                                        '--no-sandbox'] }
      )
    )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
      app,
      browser: :firefox,
      marionette: true
    )
  elsif BROWSER.eql?('firefox_headless')
    browser_options = Selenium::WebDriver::Firefox::Options.new(
      args: ['--headless',
             'disable-gpu',
             '--disable-cache']
    )
    Capybara::Selenium::Driver.new(
      app,
      browser: :firefox,
      options: browser_options
    )
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium # selenium_chrome #selenium_chrome_hendless
  config.default_max_wait_time = 30
  config.app_host = CONFIG['url_padrao']
  puts config.app_host
end
