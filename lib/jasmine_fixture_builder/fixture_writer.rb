require 'rails'

module JasmineFixtureBuilder
  class FixtureWriter

    def initialize(markup, fixture_name)
      @markup = markup
      @fixture_name = fixture_name
    end

    def write
      fixture_file = File.join(fixture_path, @fixture_name)
      File.open(fixture_file, 'w') do |file|
        file.puts(@markup)
      end
    end

    private

    def fixture_path
      @fixture_path ||= Rails.root.join(JAZZ_FIX_PATHS[:fixture_path])
    end
  end
end

