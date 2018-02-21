require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
    set :views, 'views/pirates'

    # code other routes/actions here
    get '/' do
      erb :new
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        
        Ship.new(ship)
      end
      erb :show
    end

    # get '/pirates' do
    #   erb :show
    # end

  end
end
