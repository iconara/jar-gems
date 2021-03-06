# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'metrics-servlets-jars'
  s.version     = '3.1.0'
  s.platform    = 'java'
  s.authors     = ['Joel Segerlind']
  s.email       = ['joel.segerlind@gmail.com']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Gem package of Dropwizard's Metrics}
  s.description = %q{Gem package of Dropwizard's Metrics, a.k.a. Coda Hale's Metrics, a.k.a. Yammer's Metrics (https://dropwizard.github.io/metrics)}
  s.license     = 'Apache-2.0'

  s.add_dependency 'metrics-core-jars', '~> 3.1.0'
  s.add_dependency 'metrics-healthchecks-jars', '~> 3.1.0'
  s.add_dependency 'metrics-json-jars', '~> 3.1.0'
  s.add_dependency 'metrics-jvm-jars', '~> 3.1.0'
  s.add_dependency 'jackson-jars', '~> 2.4.2'

  s.files         = Dir['lib/*.{rb,jar}']
  s.require_paths = %w(lib)
end
