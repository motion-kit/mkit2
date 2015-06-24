# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")

platform = ENV.fetch('platform', 'ios')
if ['ios', 'osx', 'android'].include?(platform)
  require "motion/project/template/#{platform}"
end

require './lib/motion-kit'

begin
  require 'bundler'
  require 'motion/project/template/gem/gem_tasks'
  Bundler.require
rescue LoadError
end

require "./rakefile-#{platform}"
