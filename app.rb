require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/results' do
    @phrase = PigLatinizer.new
    @piglatinized_text = @phrase.piglatinize(params[:user_phrase])
    #binding.pry
    #erb :results
  end

end
