require 'bundler/setup'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => [:ci_cleanup, :test]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task :ci_cleanup do
  require 'minitest/test'
  require 'minitest/ci'
  Minitest::Ci.new.start
end