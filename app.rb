require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf = params["sf"]
    @pf = params["pf"]
    @c = params["c"]
    erb :team
  end
  # {"name"=>"asdf", "coach"=>"asdf", "pg"=>"sadf", "sg"=>"asfd", "sf"=>"s", "pf"=>"s", "c"=>"s"}

end
