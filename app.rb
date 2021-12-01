require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  $player_1 = 'Riky'
  $player_2 = 'Jessica'

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect "/play"
  end

  get '/play' do
    @player_1 = $player_1.player
    @player_2 = $player_2.player
    erb :play
  end

  post '/player_1_HP' do
    @hitpoints = Hitpoints.instance
    @hitpoints.player_1_HP
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_1.player
    @player_2 = $player_2.player
    erb :attack
  end

    # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
