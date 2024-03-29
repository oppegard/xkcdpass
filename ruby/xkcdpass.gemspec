# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xkcdpass/version'

Gem::Specification.new do |spec|
  spec.name          = "xkcdpass"
  spec.version       = Xkcdpass::VERSION
  spec.authors       = ["Glenn Oppegard"]
  spec.email         = ["oppegard@gmail.com"]
  spec.summary       = %q{Passphrases are 4 words; adjective, noun, adverb, verb.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
