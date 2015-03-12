# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'metrics-core-jars'
  s.version     = '3.1.1'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://dropwizard.github.io/metrics'
  s.summary     = %q{Gem package of Dropwizard\'s Metrics}
  s.description = %q{Gem package of Dropwizard\'s Metrics, a.k.a. Coda Hale\'s Metrics, a.k.a. Yammer\'s Metrics}
  s.license     = 'Apache-2.0'

  s.rubyforge_project = 'metrics-core-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
