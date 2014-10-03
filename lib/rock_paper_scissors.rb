require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base
  get '/' do
    'Welcome to Rock Paper Scissors'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
