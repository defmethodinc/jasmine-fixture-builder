require "jasmine_fixture_builder/version"

module JasmineFixtureBuilder
  RSpec::Matchers.define :save_fixture do |markup, fixture|
    fixture_path = Rails.root.join('spec/javascripts/fixtures')
    Dir.mkdir(fixture_path) unless File.exists?(fixture_path)
    fixture_file = File.join(fixture_path, fixture)
    File.open(fixture_file, 'w') do |file|
      file.puts(markup)
    end
  end
end

