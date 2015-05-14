class JasmineFixtureBuilder::PathInstaller
  JAZZ_FIX_PATHS = [
    "spec/javascripts/fixtures",
    "spec/javascripts/fixture_builders"
  ]

  def self.install(root_path)
    JAZZ_FIX_PATHS.each do |jazz_fix_path|
      install_path = root_path.join(jazz_fix_path)
      unless Dir.exists?(install_path)
        FileUtils.mkdir_p(install_path)
        File.new(install_path.to_s + "/.keep", "w")
      end
    end
  end
end

