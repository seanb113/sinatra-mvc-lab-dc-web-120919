require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    get '/'  do 

        erb :user_input
    end 

    post '/piglatinize' do

        #binding.pry
        pig = PigLatinizer.new
        @piglatin = pig.piglatinize(params[:user_phrase])
        erb :results
    end 
end