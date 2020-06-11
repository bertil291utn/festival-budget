class TransactionsController < ApplicationController
  def index
    @transactions = User.find(current_user.id).transactions.with_festival
    # @total = '%<0.2>f' % [@transactions.sum(:amount)]
    @total = @transactions.sum(:amount)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    render :new, notice: 'Something went wrong!' unless @transaction.save

    redirect_to transactions_path, notice: 'Thanks for feeding the piglet'
  end

  private

  def transaction_params
    params.require(:transaction).permit(:description, :amount)
  end
end
