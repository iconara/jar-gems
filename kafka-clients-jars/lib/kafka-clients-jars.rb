# encoding: utf-8

require 'java'
require 'slf4j-jars'
require 'metrics-core-jars'
require 'snappy-jars'
require 'lz4-jars'


Dir[%(#{File.expand_path('..', __FILE__)}/*.jar)].each { |jar| require(jar) }
