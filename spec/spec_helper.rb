require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'acts_as_element_in_category'
require 'models'
require 'migrations'

RSpec.configure do |config|
  config.color = true
  config.mock_framework = :rspec
  config.before(:all) {
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')
  }
end


