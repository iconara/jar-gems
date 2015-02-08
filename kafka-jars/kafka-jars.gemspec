# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'kafka-jars'
  s.version     = '0.8.2.1'
  s.platform    = 'java'
  s.authors     = ['Mathias Söderberg']
  s.email       = ['mths@sdrbrg.se']
  s.summary     = %q{Gem package of Apache Kafka JARs}
  s.description = %q{Gem package of Apache Kafka JARs}
  s.license     = 'Apache-2.0'

  s.add_dependency 'kafka-clients-jars', '~> 0.8'
  s.add_dependency 'scala-library-jars', '~> 2.9.2'
  s.add_dependency 'zookeeper-jars', '~> 3.4'
  s.add_dependency 'slf4j-jars', '~> 1.7'
  s.add_dependency 'metrics-core-jars', '>= 2.1', '< 3.0.0'
  s.add_dependency 'snappy-jars', '~> 1.1'
  s.add_dependency 'lz4-jars', '~> 1.2'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
