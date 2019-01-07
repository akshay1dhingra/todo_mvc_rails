class UsersController < ApplicationController
    
    def new
        @user = User.new
    end 

    def create 
        # raise params.inspect
        @user = User.new
        @user.email = params[:user][:email]
        if @user.save
            redirect_to lists_path
        else 
            render '/users/new' 
        end
    end 

end
