# encoding: utf-8

require 'java'
begin
  v = Java::ScalaUtil::Properties.versionNumberString
  if v !~ /^2\.10\./
    raise LoadError, "Unexpected version of scala already loaded. Expected 2.10.x, got: #{v}"
  end
rescue NameError
  Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
end
