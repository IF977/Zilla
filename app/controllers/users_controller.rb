class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
         @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
          log_in @user
          flash[:success] = "Bem vindo ao Zilla"
          redirect_to @user
        else
          render 'new'
        end
    end
    
    def buy
    end
    
    def historic
    end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
end
