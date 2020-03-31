# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'log4j-jars'
  s.version     = '2.13.1'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://logging.apache.org/log4j/2.x/'
  s.summary     = %q{Log4j jars}
  s.description = %q{}

  s.rubyforge_project = 'log4j-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
