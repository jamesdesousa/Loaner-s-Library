class LoansController < ApplicationController
  def create
      @loan = @current_user.loans.create(loan_params)
      if @loan.valid?
          flash[:messages] = ["loan created!"]
          redirect_to items_path
      else
          flash[:messages] = @loan.errors.full_messages.uniq!
          redirect_to item_path(params[@loan.item_id])
      end
  end

  private

  def loan_params
    params.require(:loan).permit(:user_id, :item_id, :duedate)
  end

end
