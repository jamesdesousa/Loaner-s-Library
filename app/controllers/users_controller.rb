class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    skip_before_action :authorized, only: [:login, :handle_login, :create, :new]


    def login
    end

    def homepage
        @user = @current_user
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_homepage_path
        else
            flash[:messages] = ["Incorrect Username/Password"]
            redirect_to login_path
        end
    end

    def logout
        logout_user
        redirect_to login_path
    end

    def destroy
        @current_user.destroy
        redirect_to login_path
    end

    def settings
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
        if @user.valid?
            flash[:messages] = ["Account Created! You may now log in."]
            redirect_to login_path
        else
            flash[:messages] = @user.errors.full_messages.uniq
            redirect_to new_user_path
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            flash[:messages] = ["Password successfully changed"]
            redirect_to settings_path(@user)
        else
            flash[:messages] = @user.errors.full_messages.uniq
            redirect_to settings_path(@user)
        end
    end



    private

    def user_params
        params.require(:user).permit(:username, :name, :password, :password_confirmation)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
