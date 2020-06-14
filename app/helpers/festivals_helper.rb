module FestivalsHelper
  def leftamount(budget, array_elem)
    budget - sum(array_elem)
  end
end
