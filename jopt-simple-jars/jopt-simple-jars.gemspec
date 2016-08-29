# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'jopt-simple-jars'
  s.version     = '4.9.0'
  s.platform    = 'java'
  s.authors     = ['Mathias Söderberg']
  s.email       = ['mths@sdrbrg.se']
  s.homepage    = ''
  s.summary     = %q{Gem package of JOpt Simple}
  s.description = %q{Gem package of JOpt Simple}

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
