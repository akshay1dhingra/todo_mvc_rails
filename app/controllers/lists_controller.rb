class ListsController < ApplicationController

    def index 
        # render 'lists/index.html.erb'
        @lists = List.all
        raise @lists.inspect 
    end

end
