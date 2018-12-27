class ListsController < ApplicationController

    def index 
        # render 'lists/index.html.erb'
        @lists = List.all
    end

    def show 
        @list = List.find(params[:id])
    end 

end
