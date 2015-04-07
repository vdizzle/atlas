
module Routes
  class Main < Base
    get '/' do
      erb :'main/home.html', layout: :'layouts/layout.html'
    end

    post '/contact' do
      content_type 'text/plain'
      contact_message = ContactMessage.create!(params[:contact])
      json({ status: 'ok' })
    end
  end
end
