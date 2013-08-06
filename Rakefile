# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "wilson_interval"
  gem.homepage = "http://github.com/magnusvk/wilson_interval"
  gem.license = "MIT"
  gem.summary = %Q{Calculate Wilson confidence intervals with minimum fuss.}
  gem.description = %Q{Makes it super easy to calculate Wilson confidence intervals.}
  gem.email = "magnus@vonkoeller.de"
  gem.authors = ["Magnus von Koeller"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
