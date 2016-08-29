# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'zkclient-jars'
  s.version     = '0.8.0.2'
  s.platform    = 'java'
  s.authors     = ['Mathias Söderberg']
  s.email       = ['mths@sdrbrg.se']
  s.homepage    = ''
  s.summary     = %q{Gem package of zkclient}
  s.description = %q{Gem package of zkclient}

  s.add_dependency 'zookeeper-jars', '~> 3.4'
  s.add_dependency 'slf4j-jars', '~> 1.7'
  s.add_dependency 'log4j-jars', '~> 1.2', '< 1.3.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
