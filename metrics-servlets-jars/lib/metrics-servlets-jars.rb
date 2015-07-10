# encoding: utf-8

require 'metrics-core-jars'
require 'metrics-healthchecks-jars'
require 'metrics-json-jars'
require 'metrics-jvm-jars'
require 'jackson-jars'

Dir[File.expand_path('../*.jar', __FILE__)].each(&method(:require))
