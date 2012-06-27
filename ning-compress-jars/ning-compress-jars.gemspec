# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'ning-compress-jars'
  s.version     = '0.9.5'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = 'ning-compress-jars'
  
  s.files         = Dir['lib/*.rb'] + Dir['lib/ext/*.jar']
  s.require_paths = %w(lib)
end
