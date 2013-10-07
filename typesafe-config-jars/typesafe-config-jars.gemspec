# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'typesafe-config-jars'
  s.version     = '1.0.2'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Typesafe Config JARs from http://typesafe.com}
  s.description = %q{}

  s.rubyforge_project = 'typesafe-config-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
