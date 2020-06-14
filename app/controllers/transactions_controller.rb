class TransactionsController < ApplicationController
  @@current_path = ''

  def index
    @@current_path = 'festival'
    @transactions = User.find(current_user.id).transactions.with_festival
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

    redirect_to @@current_path.eql?('festival') ? transactions_path : no_festival_path, notice: 'Thanks for feeding the piglet'
  end

  def no_festival
    @transactions = User.find(current_user.id).transactions.without_festival
  end

  private

  def transaction_params
    params.require(:transaction).permit(:description, :amount, :festival_id)
  end
end
