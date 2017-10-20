module DoubleMattressTwoPrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price
    @double_mattress_two = DoubleMattressTwo.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size('140cm', '200cm')
      budget_comfort_premium(158500, 228500, 248500)
    elsif size('140cm', '210cm')
      budget_comfort_premium(178500, 248500, 298500)
    elsif size('140cm', '220cm')
      budget_comfort_premium(198500, 268500, 338500)
    elsif size('160cm', '200cm')
      budget_comfort_premium(168500, 238500, 268500)
    elsif size('160cm', '210cm')
      budget_comfort_premium(188500, 258500, 308500)
    elsif size('160cm', '220cm')
      budget_comfort_premium(208500, 278500, 348500)
    elsif size('180cm', '200cm')
      budget_comfort_premium(178500, 248500, 278500)
    elsif size('180cm', '210cm')
      budget_comfort_premium(198500, 268500, 318500)
    elsif size('180cm', '220cm')
      budget_comfort_premium(218500, 288500, 358500)
    elsif size('200cm', '200cm')
      budget_comfort_premium(198500, 268500, 298500)
    elsif size('200cm', '210cm')
      budget_comfort_premium(218500, 288500, 338500)
    elsif size('200cm', '220cm')
      budget_comfort_premium(238500, 308500, 378500)
    else
      @price = 0000
    end
  end

  def budget_comfort_premium(budget, comfort, premium)
    if double_mattress_two_diseases_on? || double_mattress_two_diseases2_on?
      @price = premium
    else
      case @double_mattress_two.category
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
    @double_mattress_two.mattress_width.eql?(width) && @double_mattress_two.mattress_length.eql?(length)
  end

end
