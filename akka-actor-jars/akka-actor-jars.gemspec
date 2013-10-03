# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'akka-actor-jars'
  s.version     = '2.2.1'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Akka Actors JARs from http://akka.io}
  s.description = %q{}

  s.add_dependency 'scala-library-jars', '~> 2.10.0'

  s.rubyforge_project = 'akka-actor-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar'] + Dir['config/*.conf']
  s.require_paths = %w(lib)
end
