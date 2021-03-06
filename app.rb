require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'


class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index 
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  get "/switch" do
    $game.switch
    redirect "/play"
  end

  run! if app_file == $0
end
