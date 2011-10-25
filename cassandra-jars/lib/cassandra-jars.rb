# encoding: utf-8

require 'java'


CASSANDRA_LIB_HOME = File.expand_path('..', __FILE__)

$CLASSPATH << CASSANDRA_LIB_HOME

Dir["#{CASSANDRA_LIB_HOME}/*.jar"].each { |jar| require(jar) }