# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'kafka-clients-jars'
  s.version     = '0.10.0.1'
  s.platform    = 'java'
  s.authors     = ['Mathias Söderberg']
  s.email       = ['mths@sdrbrg.se']
  s.homepage    = 'https://kafka.apache.org/'
  s.summary     = %q{Apache Kafka client jars}
  s.description = %q{}
  s.license     = 'Apache-2.0'

  s.add_dependency 'slf4j-jars', '~> 1.7'
  s.add_dependency 'snappy-jars', '~> 1.1'
  s.add_dependency 'lz4-jars', '~> 1.3'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = ['lib']
end
