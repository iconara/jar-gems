# encoding: utf-8

require 'java'
require 'cassandra-jars'

HECTOR_LIB_HOME = File.expand_path('..', __FILE__)

Dir["#{HECTOR_LIB_HOME}/*.jar"].each { |jar| require(jar) }