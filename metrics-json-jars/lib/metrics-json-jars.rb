# encoding: utf-8

require 'jackson-jars'
require 'metrics-core-jars'
require 'metrics-healthchecks-jars'

Dir[File.expand_path('../*.jar', __FILE__)].each(&method(:require))
