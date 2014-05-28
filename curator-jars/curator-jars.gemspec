# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'curator-jars'
  s.version     = '2.5.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'curator-jars'

  s.add_dependency 'slf4j-jars', '~> 1.6.2'
  s.add_dependency 'zookeeper-jars', '~> 3.4.6'
  s.add_dependency 'guava-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
