require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # before do
  #   @hitpoints = Hitpoints.instance
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect "/play"
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  post '/player_1_HP' do
    @hitpoints = Hitpoints.instance
    @hitpoints.player_1_HP
    redirect '/play'
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :attack
  end

    # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
