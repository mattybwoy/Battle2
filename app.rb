require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    # session[:playeronehp] = HIT_POINT
    # session[:playertwohp] = HIT_POINT
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2hp = Player::HIT_POINT
    erb :play
  end

  post '/attack' do
    @game = $game
    @player1 = $player1
    @player2 = $player2
    @player2hp = session[:playertwohp]
    erb :attack
  end

  run! if app_file == $0
end