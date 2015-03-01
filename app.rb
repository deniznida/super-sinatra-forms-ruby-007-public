require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @heros = params[:team][:members]
    erb :team
  end
end
