# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'metrics-graphite-jars'
  s.version     = '3.0.2'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'metrics-graphite-jars'
  
  s.add_dependency 'metrics-core-jars', '~> 3.0.2'
  s.add_dependency 'slf4j-jars', '~> 1.7.5'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
