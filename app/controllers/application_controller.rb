require 'sinatra/base'

require './config/environment.rb'
require './app/models/team.rb'
require './app/models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get "/" do 
      erb :new
    end
    
    post "/show" do 
      @team = 
      erb :show
    end

end

 #post '/pirates' do
      #@pirate = Pirate.new(params[:pirate])
      
      #params[:pirate][:ships].each do |details|
        #Ship.new(details)
      #end
      
      #@ships = Ship.all

      #erb :"pirates/show"
  #end
