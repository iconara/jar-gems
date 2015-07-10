# encoding: utf-8

require 'metrics-core-jars'

Dir[File.expand_path('../*.jar', __FILE__)].each(&method(:require))
