# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmg/version'

Gem::Specification.new do |spec|
  spec.name          = "nmg"
  spec.version       = Nmg::VERSION
  spec.authors       = ["Łukasz Niemier"]
  spec.email         = ["lukasz@niemier.pl"]
  spec.description   = %q{Easy machines and tasks generator for PUT lessons}
  spec.summary       = %q{Tool for generating machines and tasks for them.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor",   "~> 0.18.1"
  spec.add_dependency "virtus", "~> 1.0.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rr"
end
