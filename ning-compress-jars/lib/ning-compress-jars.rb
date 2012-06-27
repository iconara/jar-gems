# encoding: utf-8

require 'java'

Dir[File.expand_path('../ext/*.jar', __FILE__)].each { |jar| require(jar) }
