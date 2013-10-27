#!/usr/bin/env rake

require 'bundler/gem_helper'

Bundler::GemHelper.install_tasks :name => 'dotenv-contrib'

require 'rspec/core/rake_task'

desc "Run all specs"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
  t.verbose = false
end

task :default => :spec
