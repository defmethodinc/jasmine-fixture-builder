require_relative "path_installer.rb"

namespace :jazz_fix do
  desc "Create directory structure for jasmine_fixture_builder"
  task :install do
    JasmineFixtureBuilder::PathInstaller.install(Rails.root)
  end
end

