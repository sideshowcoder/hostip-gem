# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'version'

Gem::Specification.new do |s|
  s.name = "hostip"
  s.version = HOSTIP_VERSION
  s.authors = ['Philipp Fehre']
  s.email = "philipp.fehre@googlemail.com"
  s.homepage = "https://github.com/sideshowcoder/hostip-gem"
  s.description = s.summary = "A simple Ruby wrapper for hostip.info"
  s.summary = "Get geolocation, ip, country and city information for current or any other ip from hostip.info"
  s.license = 'BSD'

  s.platform = Gem::Platform::RUBY
  s.rubyforge_project = "hostip"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md"]

  s.require_path = 'lib'
  s.files = %w(README.md) + Dir.glob("{lib,tests,bin}/*")

  s.bindir = 'bin'
  s.executables = ['hostip']
  s.test_files = Dir.glob('tests/*.rb')
  s.add_dependency('httparty')
  s.add_dependency('rdoc')

  s.add_development_dependency("minitest")
end
