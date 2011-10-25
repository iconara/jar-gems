# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'scala-library-jars'
  s.version     = '2.9.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://scala-lang.org'
  s.summary     = %q{Scala Library JARs}
  s.description = %q{}

  s.rubyforge_project = 'scala-library-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
