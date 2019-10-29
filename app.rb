require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_instance = PigLatinizer.new
        @pig_latinized_words = @pig_instance.piglatinize(params[:user_phrase])

        erb :piglatinize
    end
end