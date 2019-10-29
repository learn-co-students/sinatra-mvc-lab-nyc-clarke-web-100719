require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do              #page to take in user input
        erb :user_input
    end

    post '/piglatinize' do
        piglatin = PigLatinizer.new
        @user_phrase = piglatin.piglatinize(params[:user_phrase])
        
        erb :results
    end

end