require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'rspec'
require 'pry'

Capybara.configure do |config|

    # Browser Exibido
    config.default_driver = :selenium_chrome

    # selecionar o ambiente 
    config.app_host = 'http://saucedemo.com/'

    # Configura o tempo maximo de espera
    config.default_max_wait_time = 15
    
end

Capybara.page.driver.browser.manage.window.maximize