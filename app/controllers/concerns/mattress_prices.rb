module MattressPrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price
    @mattress = Mattress.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size('80cm', '200cm')
      budget_comfort_premium(84500, 119500, 134500)
    elsif size('80cm', '210cm')
      budget_comfort_premium(94500, 129500, 154500)
    elsif size('80cm', '220cm')
      budget_comfort_premium(104500, 139500, 174500)
    elsif size('90cm', '200cm')
      budget_comfort_premium(89500, 124500, 139500)
    elsif size('90cm', '210cm')
      budget_comfort_premium(99500, 134500, 159500)
    elsif size('90cm', '220cm')
      budget_comfort_premium(109500, 144500, 179500)
    elsif size('100cm', '200cm')
      budget_comfort_premium(99500, 134500, 149500)
    elsif size('100cm', '210cm')
      budget_comfort_premium(109500, 144500, 169500)
    elsif size('100cm', '220cm')
      budget_comfort_premium(119500, 154500, 189500)
    else
      @price = 0000
    end
  end

  def budget_comfort_premium(budget, comfort, premium)
    if diseases_on?
      @price = premium
    else
      case @mattress.category
      when 'Budget'
        @price = budget
      when 'Comfort'
        @price = comfort
      when 'Premium'
        @price = premium
      end
    end
  end

  def size(width, length)
    @mattress.mattress_width.eql?(width) && @mattress.mattress_length.eql?(length)
  end

end
