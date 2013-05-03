# encoding: utf-8
$:.unshift File.expand_path("../lib", __FILE__)
$:.unshift File.expand_path("../../lib", __FILE__)

require 'bigben/version'

Gem::Specification.new do |s|
  s.name        = "bigben"
  s.version     = BigBen::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kareem Kouddous"]
  s.email       = ["kareeknyc@gmail.com"]
  s.homepage    = "http://github.com/crowdtap/bigben"
  s.summary     = "Threaded timer"
  s.description = "Threaded timer"

  s.add_dependency "activesupport",       ">= 3.0.0"

  s.files        = Dir["lib/**/*"]
  s.require_path = 'lib'
  s.has_rdoc     = false
end
