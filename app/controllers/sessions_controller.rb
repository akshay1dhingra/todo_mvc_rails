class SessionsController < ApplicationController
    
    def new 
    end 

    def create
        if auth_hash = request.env["omniauth.auth"]
            # binding.pry
            
           user = User.find_or_create_by_omniauth(auth_hash)
           session[:user_id] = user.id 
           flash[:alert] = "Welcome!"
           redirect_to root_path
        else
            # Normal login
            user = User.find_by(:email => params[:email])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id 
                redirect_to root_path
            else
                flash[:alert] = "No email found"
                render 'sessions/new' 
            end
        end
    end 

    def destroy 
        reset_session
        redirect_to root_path
    end 

end
