class UsersController < ApplicationController
    
    def new
        
    end

    def create
       # below code intends to create a new record in the users table
       # @user is an instance variable, 
       # User refers to the model because it inherites from <UsersController>
       # .new is the methord that will build the object making ready to be added as a new record
       # .save saves the new record to th users database
        

        #create- User.create

        if User.create(username: params[:username], email: params[:email], password: params[:password])
            redirect_to new_user_path
        else 
            render :new 
        end


          
    end
    
end
