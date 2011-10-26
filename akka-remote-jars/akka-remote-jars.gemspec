# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'akka-remote-jars'
  s.version     = '1.2.0.2'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'akka-remote-jars'
  
  s.add_dependency 'akka-actor-jars', '~> 1.2.0'
  s.add_dependency 'protobuf-jars', '~> 2.4.0'
  s.add_dependency 'commons-io-jars', '~> 2.0.0'
  s.add_dependency 'netty-jars', '~> 3.2.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
