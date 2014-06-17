# encoding: utf-8

require 'java'

unless defined?($SLF4J_BACKEND)
  $SLF4J_BACKEND = 'nop'
end

Dir["#{File.expand_path('..', __FILE__)}/slf4j-api-*.jar"].each { |jar| require(jar) }
Dir["#{File.expand_path('..', __FILE__)}/slf4j-#{$SLF4J_BACKEND}-*.jar"].each { |jar| require(jar) } if $SLF4J_BACKEND
