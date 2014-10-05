require 'sinatra/base'
require_relative 'player'

class Rock_Paper_Scissors < Sinatra::Base

	enable :session

set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
 	@name = params[:player]
    erb :index
  end

  post '/game' do
    puts session.inspect
  	@name = params[:player]
    player = Player.new(@name)
    puts player.inspect
    erb :game  
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
