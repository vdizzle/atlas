module Routes
  class Base < Sinatra::Base
    configure do
      set :views, File.join(ENV['RACK_ROOT'], 'app/views')
    end
  end
end
