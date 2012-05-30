# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'ivy-jars'
  s.version     = '2.2.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'ivy-jars'
  
  # s.add_dependency 'xyz', '~> 0.0.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/ext/*.jar']
  s.require_paths = %w(lib)
end
