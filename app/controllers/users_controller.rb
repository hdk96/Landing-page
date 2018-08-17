class UsersController < ApplicationController
	    def new
  		@user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
	        # Tell the UserMailer to send a welcome email after save
	        UserMailer.with(user: @user).welcome_email.deliver_later
        else
            redirect_to home_path
        end
    end

    def show
  		 @user = User.last
    end 

    private
    
    def user_params
    	params.require(:user).permit(:username, :email)
    end 
end
