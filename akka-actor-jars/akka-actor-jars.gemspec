# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'akka-actor-jars'
  s.version     = '1.2.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://akka.io'
  s.summary     = %q{Akka Actors JARs}
  s.description = %q{}

  s.add_dependency 'scala-library-jars', '~> 2.9.0'

  s.rubyforge_project = 'akka-actor-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar'] + Dir['config/*.conf']
  s.require_paths = %w(lib)
end
