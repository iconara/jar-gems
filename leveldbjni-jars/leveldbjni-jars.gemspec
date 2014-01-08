# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'leveldbjni-jars'
  s.version     = '1.8.0'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Gem package of leveldbjni}
  s.description = %q{Gem package of leveldbjni}
  s.license     = 'New BSD'

  s.rubyforge_project = 'leveldbjni-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
