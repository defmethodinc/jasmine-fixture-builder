namespace :jazz_fix do
  task :setup do
    fixture_path = Rails.root.join('spec/javascripts/fixtures')
    fixture_builder_path = Rails.root.join('spec/javascripts/fixtures')
    ["fixtures", "fixture_builders"].each do |name|
      path = Rails.root.join("spec/javascripts/#{name}")
      Dir.mkdir(path) unless File.exists?(path)
    end
  end
end

