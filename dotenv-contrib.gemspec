# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dotenv-contrib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.version       = DotenvContrib::VERSION
  gem.authors       = ["Don Morrison"]
  gem.email         = ["don@elskwid.net"]
  gem.description   = %q{Extensions for Dotenv}
  gem.summary       = %q{Extensions for Dotenv}
  gem.homepage      = "https://github.com/elskwid/dotenv-contrib"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dotenv-contrib"
  gem.require_paths = ["lib"]

  gem.add_dependency 'dotenv', '>= 0.9'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
