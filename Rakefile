$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "version"

task :build do
  system "gem build hostip.gemspec"
end
 
task :release => :build do
  system "gem push hostip-#{HOSTIP_VERSION}"
end
