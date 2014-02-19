# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'ehcache-jars'
  s.version     = '2.8.1'
  s.platform    = 'java'
  s.authors     = ['Gustav Munkby']
  s.email       = ['grddev@gmail.com']
  s.homepage    = 'http://ehcache.org/'
  s.summary     = %q{Ehcache}
  s.description = %q{}

  s.rubyforge_project = 'ehcache-jars'

  s.add_dependency 'slf4j-jars', '~> 1'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
