# encoding: utf-8

require 'java'
require 'cassandra-jars'

PELOPS_LIB_HOME = File.expand_path('..', __FILE__)

Dir["#{PELOPS_LIB_HOME}/*.jar"].each { |jar| require(jar) }