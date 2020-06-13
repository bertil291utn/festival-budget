class TransactionsController < ApplicationController
  def index
    @transactions = User.find(current_user.id).transactions.with_festival
    @total = @transactions.sum(:amount)
  end

  def new
    @transaction = Transaction.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = current_user
    @transaction = user.transactions.build(transaction_params)
    return render :new unless @transaction.save

    redirect_to transactions_path, notice: 'Thanks for feeding the piglet'
  end

  def no_festival
    @transactions = User.find(current_user.id).transactions.without_festival
    @total = @transactions.sum(:amount)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:description, :amount, :festival_id)
  end
end
