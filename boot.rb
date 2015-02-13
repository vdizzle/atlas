ENV['RACK_ENV'] ||= 'development'
ENV['RACK_ROOT'] = File.expand_path(File.dirname(__FILE__))

$LOAD_PATH.unshift(File.join(ENV['RACK_ROOT'], 'lib'))

require 'bundler'
Bundler.setup

require 'sinatra/base'
require 'compass'
require 'sass'

Dir["config/initializers/*.rb"].sort.each do |initializer_file|
  require(initializer_file)
end
