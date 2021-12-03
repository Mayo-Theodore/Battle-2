require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $player_2.attack
    erb :attack
  end

    # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
