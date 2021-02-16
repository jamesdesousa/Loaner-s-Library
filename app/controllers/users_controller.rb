class UsersController < ApplicationController
    before_action :set_logged_in_user, only: [:homepage]
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def login
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_homepage_path(@user)
        else
            flash[:errors] = ["Incorrect Username/Password"]
            redirect_to user_homepage_path
        end
    end

    def index
        @users = User.all
    end

    def show
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
    end
    
    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end

    def set_logged_in_user
        @user = User.find(session[:user_id])
    end

end
