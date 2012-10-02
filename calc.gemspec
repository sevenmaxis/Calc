# -*- encoding: utf-8 -*-
require File.expand_path('../lib/calc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Gopkalo"]
  gem.email         = ["Sergey.Gopkalo@gmail.com"]
  gem.description   = %q{training project for RubyGarage}
  gem.summary       = %q{training project for RubyGarage}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "calc"
  gem.require_paths = ["lib"]
  gem.version       = Calc::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~>2.11.0"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "simplecov-gem-adapter"
end
