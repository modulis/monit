# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "monit/version"

Gem::Specification.new do |gem|
  gem.authors     = ["Julien Chabanon"]
  gem.email       = ["julien@chabanon.me"]
  gem.homepage    = "https://github.com/modulis/monit"
  gem.summary     = "Connect to Monit"
  gem.description = "Retrieve server information from Monit."
  gem.license     = 'MIT'

  gem.name          = "monit-client"
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.version       = Monit::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rspec", "~> 2.9.0"
  gem.add_development_dependency "webmock", "~> 1.11.0"

  gem.add_runtime_dependency "nokogiri"
  gem.add_runtime_dependency "activesupport"
end
