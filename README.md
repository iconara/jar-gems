# README

This repository contains JRuby gems created from Java and Scala projects. They are used as dependencies in many of the other JRuby gems I have published, such as [Mikka](http://rubygems.org/gems/mikka), [Eurydice](http://rubygems.org/gems/eurydice) and [Multimeter](http://rubygems.org/gems/multimeter).

## Why?

The current state of things is that there is no good way to depend on Maven artifacts of plain JARs in JRuby. There are tools like [JBundler](https://github.com/mkristian/jbundler), [Ruby Maven](https://github.com/mkristian/ruby-maven) and [Pom Pom Pom](https://github.com/iconara/pompompom), but none of them work seamlessly with RubyGems. The approach I've taken here isn't ideal either, and isn't scalable, but it works right now.

When you publish a gem that is built on a Java library you have two options: either bundle the JAR files in the gem, or require the user to somehow download them separately. The latter can take many forms, from the completely manual, to using a tool like Ruby Maven (which requires you to run a command to install extra dependencies) or JBundler (which requires you to install all dependencies through its command). That's maybe ok if the gem is a framework like [RedStorm](https://github.com/colinsurprenant/redstorm) (think Rails, but for distributed processing), which requires that you structure your project around it anyway. However, consider an application that depends on a gem, which in turn depends on your gem. If your gem requires some manual setup or special tooling that requirement is going to be imposed on all gems that depend on your gem too. Wouldn't you hesitate to use a gem that required you to jump through extra hoops just because it, in turn, used a gem that required special setup?

If you instead use the first method, bundling the JARs, you will create a dependency hell. If your gem depends on version X of library A, and another gem depends on version Y and both bundle the library JARs they can't be used together in the same application. Most Java libraries also depend on other libraries (just like gems depend on gems), so the risk of running into incompatibilities with common libraries like commons-io, commons-lang or Guava is quite high. Bundling the JAR is kind of ok when the JAR has no dependencies of its own and I've taken this approach in [March Hare](http://rubygems.org/gems/march_hare) and [msgpack-jruby](http://rubygems.org/gems/msgpack-jruby).

My solution when the JARs have dependencies is a variant of bundling the JARs -- but instead of packaging them in the gems whose code depend on them, I package the JARs in their own gems, and try to maintain the dependency graph. For example, Eurydice depends on Pelops, which depends on Cassandra, so I have created [pelops-jars](http://rubygems.org/gems/pelops-jars) that depends on [cassandra-jars](http://rubygems.org/gems/cassandra-jars).

As I mentioned, it's not a particularly scalable solution.

## How?

Each library is a gem with the name of the library plus a "-jars" suffix. The JAR file goes into the "lib" directory along with a Ruby file that has the same name as the gem. The Ruby file requires the JAR file -- this could also be acomplished by naming the JAR file, but I think it's best to keep the name of the JAR to make it clear which version it is, since the Maven version and RubyGems versions may not match completely. The Ruby files sometimes contains some additional Ruby code to set up the library, but this is kept to a minimum. These gems are not Ruby adaptions of the libraries, they are meant to be just dependencies. Any adaption should be done in the "real" gems that depends on these gems.

When a JAR has dependencies of its own these have to be packaged independently.

The version should be as close to the original version as possible. If it's a beta or snapshot release a suffix can be used (for example "2.5.2.pre1" or "1.0.0.beta1"). If a fix to a gem must be pushed, without the JAR changing, a fourth version can be used (for example "4.2.4.1").

## Contribute

If you create a gem that depends on any of these libraries but need a different version, please submit a pull request with updated JARs and gemspecs, and I'll try to push a new version of them gem as soon as I can. If you want to become the curator of one of these gems, let me know and I'll give you push rights to that gem (I really don't want to be the gatekeeper of this, but so far I'm basically the only one depending on these gems).

An even better way of contributing would be to make something better than this.
