require_relative 'config/environment'
class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'tiff'
  end
  post '/checkout' do
    session[:item] = params[:item]
    @shopping_session = shopping_session
    erb :checkout
  end

  get '/' do
    erb :index
  end

end