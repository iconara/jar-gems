#!/bin/bash

cd $(dirname $0)

if [[ $# != 2 ]]; then
  echo "Usage: $0 artifact-name version"
  exit 1
fi

set -x

artifact=$1
version=$2
gemname=$artifact-jars

mkdir -p $gemname/lib

read -r -d '' shim <<'SHIM_END'
# encoding: utf-8

require 'java'

Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }
SHIM_END

read -r -d '' gemspec <<GEMSPEC_END
# encoding: utf-8

\$: << File.expand_path('../lib', __FILE__)


Gem::Specification.new do |s|
  s.name        = '$gemname'
  s.version     = '$version'
  s.platform    = 'java'
  s.authors     = ['Theo Hultberg']
  s.email       = ['theo@iconara.net']
  s.homepage    = ''
  s.summary     = %q{}
  s.description = %q{}

  s.rubyforge_project = '$gemname'
  
  # s.add_dependency 'xyz', '~> 0.0.0'

  s.files         = Dir['lib/*.rb'] + Dir['lib/*.jar']
  s.require_paths = %w(lib)
end
GEMSPEC_END

echo "$shim" > $gemname/lib/$gemname.rb
echo "$gemspec" > $gemname/$gemname.gemspec