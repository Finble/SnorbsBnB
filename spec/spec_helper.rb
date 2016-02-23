require File.join(File.dirname(__FILE__), '..', 'app/snorbs_bnb.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/models/space.rb'
require 'database_cleaner'

Capybara.app = SnorbsBnB  # has to be same as class name in app.rb (with all routes)

RSpec.configure do |config|

	config.include Capybara::DSL 
  config.expect_with :rspec do |expectations|
 
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
