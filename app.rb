require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    get '/'  do 

        erb :user_input
    end 

    post '/piglatinize' do

        #binding.pry
        pig = Piglatinizer.new
        @piglatin = pig.piglatinize_phrase(params[:user_phrase])
        erb :results
    end 
end