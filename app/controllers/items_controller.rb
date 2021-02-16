class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all
    end

    def show
      @loan = Loan.new
    end

    def new
        @item = Item.new
    end

    def create
        @item = @current_user.items.create(item_params)
        if @item.valid?
            flash[:messages] = ["Item created!"]
            redirect_to user_homepage_path(@current_user)
        else
            flash[:messages] = @item.errors.full_messages.uniq!
            redirect_to new_item_path
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
        @item.destroy
        flash[:messages] = ["Item removed"]
        redirect_to user_homepage_path(@current_user)
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :user_id)
    end

    def set_item
        @item = Item.find(params[:id])
    end

end
