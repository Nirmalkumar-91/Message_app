class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(params_user)
        if @user.save
            session[:user_id] = @user.id
            flash[:sucess] = "Welcome to Message App #{@user.username.capitalize}"
            redirect_to root_path
        else
            render 'new'
        end
    end
    

    private

    def params_user
        params.require(:user).permit(:username, :password)
    end
end