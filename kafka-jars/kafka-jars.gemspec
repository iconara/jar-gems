# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'kafka-jars'
  s.version     = '0.10.0.1'
  s.platform    = 'java'
  s.authors     = ['Mathias Söderberg']
  s.email       = ['mths@sdrbrg.se']
  s.summary     = %q{Gem package of Apache Kafka JARs}
  s.description = %q{Gem package of Apache Kafka JARs}
  s.license     = 'Apache-2.0'

  s.add_dependency 'kafka-clients-jars', '= 0.10.0.1'
  s.add_dependency 'zookeeper-jars', '~> 3.4'
  s.add_dependency 'slf4j-jars', '~> 1.7'
  s.add_dependency 'metrics-core-jars', '>= 2.2', '< 3.0.0'
  s.add_dependency 'scala-library-jars', '~> 2.10.0'
  s.add_dependency 'jopt-simple-jars', '~> 4.9'
  s.add_dependency 'zkclient-jars', '~> 0.8'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
