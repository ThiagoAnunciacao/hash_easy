# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_easy/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_easy"
  spec.version       = HashEasy::VERSION
  spec.authors       = ["Thiago da Anunciação"]
  spec.email         = ["thiago.anunciacao@me.com"]
  spec.summary       = %q{Some good methods to help you with your hashies.}
  spec.description   = %q{Forget of start your hashes which makes your code dirty and annoying to test.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
