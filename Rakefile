require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:main) do |t|
  t.libs << "lib"
  t.test_files = FileList["lib/*.rb"]
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :main
