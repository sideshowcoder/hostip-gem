require_relative "./lib/version"
require "rake/testtask"

task :default => :test

Rake::TestTask.new do |t|
  t.verbose = true
  t.test_files = FileList["tests/*_test.rb"]
end

task :build do
  system "gem build ./hostip.gemspec"
end

task :release => :build do
  system "gem push hostip-#{HOSTIP_VERSION}"
end
