require 'sinatra/base'

require './config/environment.rb'
require './app/models/team.rb'
require './app/models/hero.rb'

class App < Sinatra::Base
    
    
    set :views, Proc.new { File.join(root, "../views/") }
    
    
    get "/" do 
      erb :index
    end
    
    post "/teams" do 
      
      @team = Team.new(params[:team])
      
      params[:team][:members].each do |details|
        Hero.new(details)
      end
      
      @heros = Hero.all
      
      erb :show
    end

end
