class LoansController < ApplicationController

  def create
      @loan = @current_user.loans.create(loan_params)
      if @loan.valid?
          flash[:messages] = ["loan created!"]
          redirect_to item_path(@loan.item_id)
      else
          flash[:messages] = @loan.errors.full_messages.uniq
          redirect_to item_path(@loan.item_id)
      end
  end

  def update
    @loan = Loan.find(params[:id])
    @loan.update(current: false)
    flash[:messages] = ["Item returned!"]
    redirect_to item_path(@loan.item)
  end

  private

  def loan_params
    params.require(:loan).permit(:user_id, :item_id, :duedate)
  end

end
