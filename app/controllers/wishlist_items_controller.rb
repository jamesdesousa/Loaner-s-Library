class WishlistItemsController < ApplicationController
    before_action :set_wishlist_item, only: [:show, :edit, :update, :destroy]

    # def index
    #     # @wishlist_items = WishlistItem.all
    # end

    def wishlist
        #show a user's wishlist items if they're your friend - stretch goal - will need a route
    end

    def show
    end

    def new
        @wishlist_item = WishlistItem.new
    end

    def create
        @wishlist_item = @current_user.wishlist_items.create(wishlist_item_params)
        if @wishlist_item.valid?
            flash[:messages] = ["Item added to wishlist"]
            redirect_to user_homepage_path(@current_user)
        else
            flash[:messages] = @item.errors.full_messages.uniq!
            redirect_to new_wishlist_item_path
        end
    end

    def edit
    end

    # def update
    #     @item.update(item_params)
    #     if @item.valid?
    #         flash[:messages] = ["Password successfully changed"]
    #         redirect_to settings_path(@item)
    #     else
    #         flash[:messages] = @item.errors.full_messages.uniq!
    #         redirect_to settings_path(@item)
    #     end
    # end

    def destroy
        @wishlist_item.destroy
        flash[:messages] = ["Item removed from wishlist"]
        redirect_to user_homepage_path(@current_user)
    end

    private

    def wishlist_item_params
        params.require(:wishlist_item).permit(:name, :description, :user_id)
    end

    def set_wishlist_item
        @wishlist_item = WishlistItem.find(params[:id])
    end

end
