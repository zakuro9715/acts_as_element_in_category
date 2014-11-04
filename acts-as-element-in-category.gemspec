# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts-as-element-in-category/version'

Gem::Specification.new do |spec|
  spec.name          = 'acts-as-element-in-category'
  spec.version       = ActsAsElementInCategory::VERSION
  spec.authors       = ['YuZakuro']
  spec.email         = ['zakuro@yuzakuro.me']
  spec.summary       = 'A categorizing plugin for Rails Applications'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'sqlite3'

  spec.add_dependency 'activerecord', '~> 4.0'
end
