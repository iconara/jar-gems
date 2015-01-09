# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'netty-jars'
  s.version     = '4.0.25'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://netty.io'
  s.summary     = %q{Netty JARs}
  s.description = %q{}

  s.rubyforge_project = 'netty-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
