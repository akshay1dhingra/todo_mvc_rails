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
        # raise params.inspect
        @list = List.new(list_params) 
        # @list.name = params[:list][:name]
        @list.save 
        
        redirect_to list_url(@list)
    end 

    private 

        def list_params
            params.require(:list).permit(:name)
        end

end
