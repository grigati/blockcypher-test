require "bundler/gem_tasks"
require "rake/testtask"

task :run do
    ruby "lib/main.rb"
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :run
