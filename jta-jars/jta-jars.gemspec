# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'jta-jars'
  s.version     = '1.1'
  s.platform    = 'java'
  s.authors     = ['Gustav Munkby']
  s.email       = ['grddev@gmail.com']
  s.homepage    = 'http://www.oracle.com/technetwork/java/javaee/jta'
  s.summary     = %q{Java Transaction API jars}
  s.description = %q{}

  s.rubyforge_project = 'jta-jars'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
