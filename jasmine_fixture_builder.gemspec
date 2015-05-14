# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jasmine_fixture_builder/version'

Gem::Specification.new do |spec|
  spec.name          = "jasmine_fixture_builder"
  spec.version       = JasmineFixtureBuilder::VERSION
  spec.authors       = ["jleo3"]
  spec.email         = ["joe@defmethod.com"]

  spec.summary       = %q{Generates fixtures for Jasmine specs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10.1"

  spec.add_dependency 'rspec-rails', '~> 3.0'
end

