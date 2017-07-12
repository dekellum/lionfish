require 'sinatra/base'

class GuppyApp < Sinatra::Base

  configure do
    enable :logging
  end

  get '/' do
    erb( :index, layout_engine: :erb )
  end
end
