require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'jasmine_fixture_builder'
Dir["#{JasmineFixtureBuilder.root}/spec/support/**/*.rb"].each { |file| require file }

RSpec.configure do |c|
  c.include Helpers::Cleaner
end
