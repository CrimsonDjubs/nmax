# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'nmax'
  s.version     = '0.0.0'
  s.date        = '2020-04-04'
  s.summary     = 'Nmax!'
  s.description = 'Show generation'
  s.authors     = ['Dmitry Ahmetshin']
  s.email       = 'djuber777@gmail.com'
  s.files       = ['lib/nmax.rb', 'lib/nmax/run.rb']
  s.homepage    = 'https://rubygems.org/gems/nmax'
  s.license     = 'MIT'
  s.require_paths = ['lib']
  s.executables   = ['nmax']

  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rspec'
end
