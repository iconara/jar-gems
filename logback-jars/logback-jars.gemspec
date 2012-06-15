# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'logback-jars'
  s.version     = '1.0.6'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'logback-jars'
  
  s.add_dependency 'slf4j-jars', '~> 1.6.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
