require "jasmine_fixture_builder/version"
require "jasmine_fixture_builder/path_installer"
require 'rspec/expectations'

module JasmineFixtureBuilder
  require "jasmine_fixture_builder/railtie" if defined?(Rails)

  RSpec::Matchers.define :save_fixture do |markup, fixture|
    fixture_path = Rails.root.join('spec/javascripts/fixtures')
    Dir.mkdir(fixture_path) unless File.exists?(fixture_path)
    fixture_file = File.join(fixture_path, fixture)
    File.open(fixture_file, 'w') do |file|
      file.puts(markup)
    end
  end
end

