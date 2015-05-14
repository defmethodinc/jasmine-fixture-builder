require "rspec/expectations"

module JasmineFixtureBuilder
  class RspecMatchers

    RSpec::Matchers.define :save_fixture do |markup, fixture|
      FixtureWriter.new(markup, fixture).write
    end
  end
end

