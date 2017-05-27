# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lifx-faraday/version"

Gem::Specification.new do |s|
  s.name          = 'lifx-faraday'
  s.summary       = 'LiFX API implemented using Faraday'
  s.version       = LifxFaraday::VERSION
  s.author        = 'Corey Alexander'
  s.email         = 'coreyja@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/coreyja/lifx-faraday'

  s.required_ruby_version = '>= 2.1.0'

  s.add_runtime_dependency 'faraday', '~> 0.12'

  s.add_development_dependency 'rubocop', '~> 0.49'
  s.add_development_dependency 'github_changelog_generator'
  s.add_development_dependency 'gem-release', '2.0.0.dev.5'
end
