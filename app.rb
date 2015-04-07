$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'boot'
require 'app/routes'
require 'app/extensions'
require 'app/models'

module Atlas
  class App < Sinatra::Base
    configure do
      set :root, ENV['RACK_ROOT']
      set :envronment, ENV['RACK_ENV']
      set :public_folder, File.join(root, 'app/assets/stylesheets')
    end

    register Extensions::AssetPipeline
    use Routes::Main
  end
end
