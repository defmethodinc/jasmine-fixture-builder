module JasmineFixtureBuilder
  class PathInstaller
    def self.install(root_path)
      JAZZ_FIX_PATHS.values.each do |jazz_fix_path|
        install_path = root_path.join(jazz_fix_path)
        unless Dir.exists?(install_path)
          FileUtils.mkdir_p(install_path)
          File.new(install_path.to_s + "/.keep", "w")
        end
      end
    end
  end
end

