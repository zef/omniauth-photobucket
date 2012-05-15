# -*- encoding: utf-8 -*-
# require File.expand_path('../lib/omniauth/photobucket/version', __FILE__)
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/photobucket/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-photobucket"
  gem.description   = 'Photobucket strategy for OmniAuth'
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/zef/omniauth-photobucket"

  gem.authors       = ["Zef Houssney"]
  gem.email         = ["zef@madebykiwi.com"]

  gem.version       = Omniauth::Photobucket::VERSION
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth', '~> 1.0'
  gem.add_runtime_dependency 'oauth'
end
