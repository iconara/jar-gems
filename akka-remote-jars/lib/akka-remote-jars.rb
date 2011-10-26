# encoding: utf-8

require 'java'
require 'protobuf-jars'
require 'commons-io-jars'
require 'netty-jars'

Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
