# encoding: utf-8

require 'java'
require 'slf4j-jars'
require 'zookeeper-jars'
require 'guava-jars'

Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
