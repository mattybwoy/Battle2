require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  HIT_POINT = 20


  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player_one_name]
    @player2 = params[:player_two_name]
    session[:playerone] = @player1
    session[:playertwo] = @player2
    session[:playeronehp] = HIT_POINT
    session[:playertwohp] = HIT_POINT
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:playerone]
    @player2 = session[:playertwo]
    @player2hp = session[:playertwohp]
    erb :play
  end

  post '/attack' do
    @player1 = session[:playerone]
    @player2 = session[:playertwo]
    @player2hp = session[:playertwohp]
    erb :attack
  end

  run! if app_file == $0
end