require 'sinatra/base'

class GuppyApp < Sinatra::Base

  get '/' do
    erb( :index, layout_engine: :erb )
  end

end
