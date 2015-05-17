require "jasmine_fixture_builder/version"
require "jasmine_fixture_builder/path_installer"
require "jasmine_fixture_builder/rspec_matchers"
require "jasmine_fixture_builder/fixture_writer"

module JasmineFixtureBuilder
  JAZZ_FIX_PATHS = {
    fixture_path: "spec/javascripts/fixtures",
    fixture_builder_path: "spec/javascripts/fixture_builders"
  }

  require "jasmine_fixture_builder/railtie" if defined?(Rails)
end

