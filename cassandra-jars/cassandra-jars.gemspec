# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'cassandra-jars'
  s.version     = '0.8.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://cassandra.apache.org'
  s.summary     = %q{Cassandra JARs}
  s.description = %q{}

  s.rubyforge_project = 'cassandra-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar'] + Dir['lib/*.xml']
  s.require_paths = %w(lib)
end
