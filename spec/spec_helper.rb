require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'acts-as-element-in-category'
require 'models'
require 'migrations'

RSpec.configure do |config|
  config.color = true
  config.mock_framework = :rspec
  config.before(:all) {
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')
  }
end


