# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'geoip-jars'
  s.version     = '1.2.12'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'http://www.maxmind.com/app/java'
  s.summary     = %q{Maxmind GeoIP JARs}
  s.description = %q{}

  s.rubyforge_project = 'geoip-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
