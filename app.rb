require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/names' do
    $game.player1.name = params[:player1]
    $game.player2.name = params[:player2]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    erb :attack
  end

    # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
