# encoding: utf-8

require 'java'
require 'scala-library-jars'
require 'slf4j-jars'
require 'metrics-core-jars'
require 'zkclient-jars'
require 'jopt-simple-jars'
require 'zookeeper-jars'
require 'kafka-clients-jars'


Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
