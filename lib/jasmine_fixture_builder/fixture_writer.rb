require 'fileutils'
require 'rails'

module JasmineFixtureBuilder
  class FixtureWriter

    def initialize(markup, fixture_name)
      @markup = markup
      @fixture_name = fixture_name
    end

    def write
      FileUtils.mkdir_p(fixture_dir) unless File.directory?(fixture_dir)
      File.open(fixture_file, 'w') do |file|
        file.puts(@markup)
      end
    end

    private

    def fixture_file
      @fixture_file ||= File.join(fixture_path, @fixture_name)
    end

    def fixture_dir
      @fixture_dir ||= File.dirname(fixture_file)
    end

    def fixture_path
      @fixture_path ||= Rails.root.join(JAZZ_FIX_PATHS[:fixture_path])
    end
  end
end

