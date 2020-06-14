module FestivalsHelper
  def left_amount(budget, array_elem)
    budget - sum(array_elem)
  end

  def budget_incoming_percent(budget, how_much_have)
    result = how_much_have / budget * 100
    result.round
  end

  def setear_bar_color(budget_percent)
    case budget_percent
    when 1...40
      'bg-danger'
    when 41...50
      'bg-warning'
    when 51...60
      'bg-info'
    else
      'bg-success'
    end
  end
end
