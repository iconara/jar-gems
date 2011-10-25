# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'webbit-jars'
  s.version     = '0.2.1'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://github.com/joewalnes/webbit'
  s.summary     = %q{Webbit JARs}
  s.description = %q{}

  s.rubyforge_project = 'webbit-jars'
  
  s.add_dependency 'netty-jars', '~> 3.2.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
