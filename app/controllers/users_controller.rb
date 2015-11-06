 class UsersController < ApplicationController

      def show
        @user = User.find(params[:id])
      end

      def new
      	 @user = User.new
      end
    end
    def create
     @user = User.new(params[:user])
     if @user.save
        # Handle a successful save.
     else
        # Handle an unsuccessful save.
     end
 end
 def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
          flash[:success] = "Welcome to the Twitter App!" 
          redirect_to @user
           # Handle a successful save.
        else
            render 'new'# Handle an unsuccessful save.     
        end
      end