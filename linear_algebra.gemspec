# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'linear_algebra/version'

Gem::Specification.new do |spec|
  spec.name          = "linear_algebra"
  spec.version       = LinearAlgebra::VERSION
  spec.authors       = ["Jeff Durand"]
  spec.email         = ["jeff.durand@gmail.com"]
  spec.summary       = %q{Linear algebra helpers and solvers}
  spec.description   = %q{A foundation to understanding machine learning is to understand linear algebra, This library was created in order to get a better understanding and provide some basic tooling for solving such problems via ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
