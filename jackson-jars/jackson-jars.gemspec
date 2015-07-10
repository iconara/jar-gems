# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'jackson-jars'
  s.version     = '2.4.2'
  s.platform    = 'java'
  s.authors     = ['Joel Segerlind']
  s.email       = ['joel.segerlind@gmail.com']
  s.homepage    = 'https://github.com/iconara/jar-gems'
  s.summary     = %q{Gem package of FasterXML's Jackson Data Processor}
  s.description = %q{Gem package of FasterXML's Jackson Data Processor with annotations and databind}
  s.license     = 'Apache-2.0'

  s.files         = Dir['lib/*.{rb,jar}']
  s.require_paths = %w(lib)
end
