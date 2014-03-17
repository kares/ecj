begin
  require 'bundler/gem_helper'
rescue LoadError => e
  require('rubygems') && retry
  raise e
end

task :build => 'build:ecj'
task :release => 'relase:ecj'
task :install => 'install:ecj'

['ecj', 'ecj_jar'].each do |name|
  gem_helper = Bundler::GemHelper.new(Dir.pwd, name)
  def gem_helper.version_tag
    "#{name}-#{version}" # override "v#{version}"
  end
  version = gem_helper.send(:version)
  version_tag = gem_helper.version_tag
  desc "Build #{name}-#{version}.gem into the pkg directory"
  task("build:#{name}") { gem_helper.build_gem }

  desc "Build and install #{name}-#{version}.gem into system gems"
  task("install:#{name}") { gem_helper.install_gem }

  desc "Create tag #{version_tag} and build and push #{name}-#{version}.gem to Rubygems"
  task("release:#{name}") { gem_helper.release_gem }
end

# task :default => :test