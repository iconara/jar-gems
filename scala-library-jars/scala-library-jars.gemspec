# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'scala-library-jars'
  s.version     = '2.10.3'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Scala Library JARs from http://scala-lang.org}
  s.description = %q{}

  s.rubyforge_project = 'scala-library-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
