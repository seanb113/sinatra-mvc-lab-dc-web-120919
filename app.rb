require_relative 'config/environment'

class App < Sinatra::Base

    get '/'  do 

        erb :user_input
    end 

    post '/piglatinize' do


        @pig_phrase = Piglatinize.create(params[:phrase])
        
        erb :piglatinize
    end 
end