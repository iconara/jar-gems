# encoding: utf-8

require 'java'
require 'scala-library-jars'


AKKA_HOME = File.expand_path('../..', __FILE__)

$CLASSPATH << File.join(AKKA_HOME, 'config')

Dir["#{AKKA_HOME}/lib/*.jar"].each { |jar| require(jar) }