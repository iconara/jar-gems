# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name          = 'lz4-jars'
  s.version       = '1.3.0'
  s.platform      = 'java'
  s.authors       = ['Mathias Söderberg']
  s.email         = ['mths@sdrbrg.se']
  s.homepage      = ''
  s.summary       = %q{LZ4 jars}
  s.description   = %q{}
  s.license       = 'Apache-2.0'
  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = ['lib']
end
