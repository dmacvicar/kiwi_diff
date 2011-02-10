# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'kiwi_diff/version'

Gem::Specification.new do |s|
  s.name        = "kiwi_diff"
  s.version     = KiwiDiff::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Duncan Mac-Vicar"]
  s.email       = ["dmacvicar@suse.de"]
  s.homepage    = "http://www.github.com/dmacvicar/kiwi_diff"
  s.summary = "Compares kiwi configurations"
  s.description = "Compares kiwi configurations when maintaining similar images"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("colorize")
  s.add_dependency("trollop")
  s.add_dependency("archive-tar-minitar")

  s.add_development_dependency("bundler", [">= 1.0"])

  s.files        = Dir.glob("lib/**/*") + %w(README.rdoc)
  s.require_path = 'lib'
  s.bindir = 'bin'
  s.executables = Dir.glob('bin/*').map {|x| File.basename x}
  s.default_executable = 'kiwi_diff'

  s.post_install_message = <<-POST_INSTALL_MESSAGE
  ____
/@    ~-.
\/ __ .- | remember to have fun!
 // //  @

  POST_INSTALL_MESSAGE
end