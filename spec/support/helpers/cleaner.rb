module Helpers
  module Cleaner
    def clean_fixtures!
      FileUtils.rm_rf(JasmineFixtureBuilder.root.join("spec", "javascripts"))
    end
  end
end
