# coding: utf-8

Gem::Specification.new do |gem|

  gem.name = 'ecj_jar'

  jar_version = File.expand_path('../jar/ecj/jar.rb', __FILE__)
  gem.version = File.read(jar_version).match( /.*JAR_VERSION\s*=\s*['"](.*)['"]$/m )[1]

  gem.summary     = "Eclipse Compiler (for Java)"
  gem.description = "Eclipse's JDT Core (Batch) Compiler a.k.a. **ecj.jar** packaged."

  gem.authors     = ["Karol Bucek"]
  gem.email       = ["self@kares.org"]
  gem.homepage    = 'http://projects.eclipse.org/projects/eclipse.jdt'
  gem.licenses    = ['EPL-1']

  gem.files = `git ls-files -z`.split("\x0").sort.
    select { |file| file == 'ecj_jar.gemspec' || file =~ /^jar\// }
  gem.require_paths = ['jar']

end