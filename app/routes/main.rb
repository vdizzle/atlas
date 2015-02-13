module Routes
  class Main < Base
    get '/' do
      erb :'main/home.html', layout: :'layouts/layout.html'
    end
  end
end
