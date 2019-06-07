require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "sessionslab"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    @hash = params

    erb :checkout
  end

end
