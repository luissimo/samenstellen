module MattressPrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price
    @mattress = Mattress.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size('80cm', '200cm')
      budget_comfort_deluxe(35500, 51900, 78900)
    elsif size('80cm', '210cm')
      budget_comfort_deluxe(40900, 59900, 88900)
    elsif size('80cm', '220cm')
      budget_comfort_deluxe(46900, 67900, 99900)
    elsif size('90cm', '200cm')
      budget_comfort_deluxe(39900, 45900, 83900)
    elsif size('90cm', '210cm')
      budget_comfort_deluxe(46900, 63900, 93900)
    elsif size('90cm', '220cm')
      budget_comfort_deluxe(48900, 70900, 102900)
    elsif size('100cm', '200cm')
      budget_comfort_deluxe(46900, 59900, 88900)
    elsif size('100cm', '210cm')
      budget_comfort_deluxe(53900, 66900, 97500)
    elsif size('100cm', '220cm')
      budget_comfort_deluxe(61900, 74900, 104900)
    else
      @price = 0000
    end
  end

  def budget_comfort_deluxe(budget, comfort, deluxe)
    case @mattress.category
    when 'Budget'
      @price = budget
    when 'Comfort'
      @price = comfort
    when 'Deluxe'
      @price = deluxe
    end
  end

  def size(width, length)
    @mattress.mattress_width.eql?(width) && @mattress.mattress_length.eql?(length)
  end

end
