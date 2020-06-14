module TransactionsHelper
  def sum(elemt_array)
    elemt_array.sum(:amount)
  end
end
