# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'metrics-healthchecks-jars'
  s.version     = '3.1.0'
  s.platform    = 'java'
  s.authors     = ['Joel Segerlind']
  s.email       = ['joel.segerlind@gmail.com']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Gem package of Dropwizard's Metrics health checks}
  s.description = %q{Gem package of Dropwizard's Metrics health checks (https://dropwizard.github.io/metrics/3.1.0/manual/healthchecks/)}
  s.license     = 'Apache-2.0'

  s.add_dependency 'metrics-jvm-jars', '~> 3.1.0'

  s.files         = Dir['lib/*.{rb,jar}']
  s.require_paths = %w(lib)
end
