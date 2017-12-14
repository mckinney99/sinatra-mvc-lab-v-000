require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinzer' do
    p = PigLatinizer.new
    @pigged = p.piglatinzer(params[:user_phrase])

  end
end
