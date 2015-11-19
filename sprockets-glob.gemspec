# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sprockets/glob/version'

Gem::Specification.new do |spec|
  spec.name          = "sprockets-glob"
  spec.version       = Sprockets::Glob::VERSION
  spec.authors       = ["Josh Bodah"]
  spec.email         = ["jb3689@yahoo.com"]

  spec.summary       = %q{adds `require_glob` and `stub_glob` directives to Sprockets}
  spec.description   = %q{really adds `require_glob` and `stub_glob` directives to Sprockets}
  spec.homepage      = "https://github.com/backupify/sprockets-glob"

  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
