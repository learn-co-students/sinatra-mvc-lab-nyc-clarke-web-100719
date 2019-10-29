require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post "/piglatinize" do
        @temp = PigLatinizer.new.piglatinize(params[:user_phrase])
        erb :phrase_output
    end

end