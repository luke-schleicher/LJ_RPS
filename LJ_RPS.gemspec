# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'LJ_RPS/version'

Gem::Specification.new do |spec|
  spec.name          = "LJ_RPS"
  spec.version       = LJRPS::VERSION
  spec.authors       = ["luke-schleicher"]
  spec.email         = ["luke.j.schleicher@gmail.com"]

  spec.summary       = "Luke and James' first gem. Rock Paper Scissors game."
  spec.homepage      = "https://github.com/luke-schleicher/LJ_RPS"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
