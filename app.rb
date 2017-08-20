require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @health_points
    erb(:play)
  end

get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_1.attack($player_2)
    erb(:attack)
    redirect '/play'
end

  run! if app_file == $0
end

@battle = 'Wecome to battle'
