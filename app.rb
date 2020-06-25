require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player_one_name]
    @player2 = params[:player_two_name]
    session[:playerone] = @player1
    session[:playertwo] = @player2
    redirect './play'
  end

  get '/play' do
    @player1 = session[:playerone]
    @player2 = session[:playertwo]
    erb :play
  end

  run! if app_file == $0
end