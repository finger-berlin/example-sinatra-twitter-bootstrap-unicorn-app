require 'sinatra'
require 'haml'

module Fascade
  class App < Sinatra::Base

    get '/' do
      haml :index
    end

    get '/about' do
      haml :about
    end
  end
end