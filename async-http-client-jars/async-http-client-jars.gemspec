# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'async-http-client-jars'
  s.version     = '1.6.5'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://github.com/sonatype/async-http-client'
  s.summary     = %q{Async HTTP Client JARs}
  s.description = %q{}

  s.rubyforge_project = 'async-http-client-jars'
  
  s.add_dependency 'netty-jars', '~> 3.2.0'
  s.add_dependency 'slf4j-jars', '~> 1.6.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
