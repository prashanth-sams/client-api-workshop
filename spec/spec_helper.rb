require 'client-api'
require 'rspec'
require 'rspec/expectations'
require 'json'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end

ClientApi.configure do |config|
  config.base_url = 'https://reqres.in'
  config.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json'}
  config.basic_auth = {'Username' => 'ahamilton@apigee.com', 'Password' => 'myp@ssw0rd'}
  config.json_output = {'Dirname' => './output', 'Filename' => 'test'}
  config.time_out = 10  # in secs
  config.logger = {'Dirname' => './logs', 'Filename' => 'test', 'StoreFilesCount' => 2}

  # add this snippet only if the logger is enabled
  config.before(:each) do |scenario|
    ClientApi::Request.new(scenario)
  end
end