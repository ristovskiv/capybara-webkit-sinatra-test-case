require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'])

require_relative 'webkit-test.rb'

run WebkitTest
