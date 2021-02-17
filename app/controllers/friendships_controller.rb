class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.create(user_id: @current_user.id, friend_id: params[:id])
        byebug
        redirect_to user_path(params[:id])
    end

    private 

    # def friendship_params
    #     params.require(:friendship).permit(:user_id, :friend_id)
    # end
end
