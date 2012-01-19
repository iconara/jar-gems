# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'pelops-jars'
  s.version     = '1.3.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://github.com/s7/scale7-pelops'
  s.summary     = %q{Pelops JARs}
  s.description = %q{}

  s.rubyforge_project = 'pelops-jars'
  
  s.add_dependency 'cassandra-jars', '~> 1.0.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
