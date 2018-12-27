class ListsController < ApplicationController

    def index 
        # render 'lists/index.html.erb'
        @list = List.new
        @lists = List.all
    end

    def show 
        @list = List.find(params[:id])
    end 

    def create 
        raise params.inspect
        # @list = List.create(name: params[:name])
    end 

end
