#!/bin/bash

cd $(dirname $0)

if [[ $# != 1 ]]; then
  echo "Usage: $0 artifact-name"
  exit 1
fi

set -x

artifact=$1
gemname=$artifact-jars

cd $gemname

export JRUBY_OPTS=''

rvm use jruby

mkdir -p pkg
mv *.gem pkg 2> /dev/null
gem build $gemname.gemspec
gem push $gemname*.gem