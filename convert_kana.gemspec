# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'convert_kana/version'

Gem::Specification.new do |spec|
  spec.name          = "convert_kana"
  spec.version       = ConvertKana::VERSION
  spec.authors       = ["Yuichi MINOWA(@y_minowa)"]
  spec.email         = ["y.minowa0614@gmail.com"]
  spec.summary       = %q{Convert full(or half)-width katakana to hiragana, and vice versa.}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "http://blog.mino3.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
