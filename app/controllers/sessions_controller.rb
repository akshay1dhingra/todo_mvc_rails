class SessionsController < ApplicationController
    
    def new 
    end 

    def create
        # raise params.inspect
        user = User.find_by(:email => params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect_to root_path
        else
            flash[:alert] = "No email found"
            render 'sessions/new' 
        end
    end 

    def destroy 
        reset_session
        redirect_to root_path
    end 

end
