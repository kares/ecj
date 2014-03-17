# ECJ

Eclipse's Java Compiler packaged as a gem (not just) for JRuby.
ECJ is part of Eclipse's [JDT](http://projects.eclipse.org/projects/eclipse.jdt)

## Setup

add the gem to your *Gemfile*:

    gem 'ecj'

or install "plain" old-school:

    $ gem install ecj

if you only need the **ecj.jar** it's packaged as a dependent gem:

    $ gem install ecj_jar

    require 'ecj/jar'
    CLASSPATH << ECJ::JAR

or obviously in your *Gemfile*:

    gem 'ecj_jar', require: 'ecj/jar'

    ECJ.load_jar


## Usage

TODO: WIP


## Copyright

Copyright (c) 2014 [Karol Bucek](http://kares.org).
See LICENSE (http://www.eclipse.org/legal/epl-v10.html) for details.