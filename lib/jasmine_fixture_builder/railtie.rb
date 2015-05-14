module JasmineFixtureBuilder
  class Railtie < Rails::Railtie

    rake_tasks do
      require "jasmine_fixture_builder/tasks"
    end
  end
end

