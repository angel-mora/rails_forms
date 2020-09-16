class UsersController < ApplicationController
    
    def new
        
    end

    def create
        # @user = User.new(user_params)

        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

    # private
    def user_params
        @user = {
            username: params[:username],
            email: params[:email],
            password: params[:password] }
        params.require(:user).permit(:username, :email, :password)
    end

end
