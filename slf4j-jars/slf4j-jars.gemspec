# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'slf4j-jars'
  s.version     = '1.6.2'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://www.slf4j.org/'
  s.summary     = %q{SLF4J jars}
  s.description = %q{}

  s.rubyforge_project = 'slf4j-jars'
  
  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
