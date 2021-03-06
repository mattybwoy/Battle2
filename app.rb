require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_one_name],params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    erb :attack
  end

  get '/player2turn' do
    @game = $game
    erb :player2turn
  end

  post '/attackplayer1' do
    @game = $game
    erb :attackplayer1
  end
  
  run! if app_file == $0
end