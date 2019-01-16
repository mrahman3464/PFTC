require 'watir-webdriver'
require 'rspec'
require 'rspec/expectations'  # additional
require 'page_helper'
require 'require_all'
require 'rubyXL'
require 'saucelabs'
require 'nokogiri'
#require 'rubyzip'
require 'sqlite3'
require 'active_record'
require 'active_support/all'
require 'saucelabs'
require 'rubygems'
require 'selenium-webdriver'
#require 'rautomation'
#require 'pretty_face'
#require  'allure-cucumber'
require 'simplecov'
require 'simplecov-rcov'
require 'headless'
require 'zip'
#require 'DataHelper'
# require 'Faker'
 require 'yaml'
# require 'open-uri'
require 'reuseable_functions'
#require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'mysql2'
#require 'rubysl-win32ole'
require 'win32ole'
require 'reuseable_functions'
#require 'name-generator'
#require 'slack-post'



SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter
]

SimpleCov.start





require './lib/page_helper'
require_all './lib/pages'


World PageHelper
World ReuseableFunction

