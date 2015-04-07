require 'yaml'
require 'erb'
require 'active_record'

path = File.join(ENV['RACK_ROOT'], 'config', 'database.yml')
config = YAML.load(ERB.new(File.read(path)).result)[ENV['RACK_ENV']]
ActiveRecord::Base.establish_connection(config)
