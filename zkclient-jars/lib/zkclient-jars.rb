# encoding: utf-8

require 'java'

unless defined?($SLF4J_BACKEND)
  $SLF4J_BACKEND = 'log4j12'
end

require 'log4j-jars'
require 'slf4j-jars'
require 'zookeeper-jars'


Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
