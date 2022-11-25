
require 'simplecov'
SimpleCov.start do
  add_group 'TeuxDeux', 'lib/teuxdeux'
  add_group 'Faraday Middleware', 'lib/faraday'
  add_group 'Specs', 'spec'
end
require 'teuxdeux'
require 'rspec'
require 'webmock/rspec'
RSpec.configure do |config|
  config.include WebMock::API
end
