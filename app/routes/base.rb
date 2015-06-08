require 'sinatra/json'

module Routes
  class Base < Sinatra::Base
    helpers Sinatra::JSON

    configure do
      set :views, File.join(ENV['RACK_ROOT'], 'app/views')
    end

    error Sinatra::NotFound do
      halt 404
    end

    error ActiveRecord::RecordNotFound do
      halt(404, { error: 'Not Found' }.to_json)
    end

    protected

    def bad_request!(error=nil)
      error_message = 'Bad Request'
      error_message += ": #{error}" if error

      halt 400, { :error => error_message }.to_json
    end
  end
end
