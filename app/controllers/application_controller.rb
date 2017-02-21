require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
    	erb :super_hero
    end

    post "/teams" do
    	@team = params[:team]
    	@hero1 = @team[:members][0]
    	@hero2 = @team[:members][1]
    	@hero3 = @team[:members][2]
    	erb :team
    end


end
