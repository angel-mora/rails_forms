class UsersController < ApplicationController
    
    def new
        
    end

    def create
        # @user = User.new(user_params)

<<<<<<< HEAD
         if User.create(username: params[:username], email: params[:email], password: params[:password])
             redirect_to new_user_path
         else 
             render :new 
         end
=======
        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end
>>>>>>> 75f43b63266308263eff2a5537883e5f509bf590

    # private
    def user_params
        @user = {
            username: params[:username],
            email: params[:email],
            password: params[:password] }
        params.require(:user).permit(:username, :email, :password)
    end

end
