# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configurator/version'

Gem::Specification.new do |spec|
  spec.name          = "configurator"
  spec.version       = Configurator::VERSION
  spec.authors       = ["Robert Lail"]
  spec.email         = ["robert.lail@cph.org"]
  spec.description   = %q{Makes it easy to load additional yml configuration for Rails}
  spec.summary       = %q{Extends Rails::Application::Configuration}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
