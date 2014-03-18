# coding: utf-8

Gem::Specification.new do |gem|

  gem.name = 'ecj'

  version = File.expand_path("lib/ecj/version.rb", File.dirname(__FILE__))
  gem.version = File.read(version).match( /.*VERSION\s*=\s*['"](.*)['"]$/m )[1]

  gem.summary     = "Eclipse Compiler (not just) for JRuby"
  gem.description = "Eclipse's Java Compiler provided as a Ruby gem."

  gem.authors     = ["Karol Bucek"]
  gem.email       = ["self@kares.org"]
  gem.homepage    = 'http://github.com/kares/ecj'
  gem.licenses    = ['EPL 1.0']

  gem.files         = `git ls-files -z`.split("\x0").sort.
    reject { |file| file == 'ecj_jar.gemspec' || file =~ /^jar\// }
  gem.test_files    = gem.files.grep /^test\//
  gem.require_paths = ['lib']

  gem.add_dependency 'ecj_jar', '< 5.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler', '~> 1.5'

end