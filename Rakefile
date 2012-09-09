#!/usr/bin/env ruby

require 'rubygems' unless ENV['NO_RUBYGEMS']
require 'rake/gempackagetask'
require 'rubygems/specification'

 
spec = Gem::Specification.new do |s|
  s.name = "hostip"
  s.version = "0.2.1"
  s.authors = ['Philipp Fehre']
  s.email = "philipp.fehre@googlemail.com"
  s.homepage = "https://github.com/sideshowcoder/hostip-gem"
  s.description = s.summary = "A simple Ruby wrapper for hostip.info"
  s.summary = "Get geolocation, ip, country and city information for current or any other ip from hostip.info"
  
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]
  
  s.require_path = 'lib'
  s.autorequire = 'hostip'
  s.files = %w(README.rdoc Rakefile) + Dir.glob("{lib,tests,bin}/*")
  
  s.bindir = 'bin'
  s.executables = ['hostip']
  s.test_files = Dir.glob('tests/*.rb')  
  s.add_dependency('httparty')
end

Rake::GemPackageTask.new(spec) do |pkg|
    pkg.need_tar = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end
