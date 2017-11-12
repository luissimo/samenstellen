module DoubleMattressOnePrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price_double_mattress_one
    @double_mattress_one = DoubleMattressOne.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size_dmo('140cm', '200cm')
      budget_comfort_premium_dmo(158500, 228500, 248500)
    elsif size_dmo('140cm', '210cm')
      budget_comfort_premium_dmo(178500, 248500, 298500)
    elsif size_dmo('140cm', '220cm')
      budget_comfort_premium_dmo(198500, 268500, 338500)
    elsif size_dmo('160cm', '200cm')
      budget_comfort_premium_dmo(168500, 238500, 268500)
    elsif size_dmo('160cm', '210cm')
      budget_comfort_premium_dmo(188500, 258500, 308500)
    elsif size_dmo('160cm', '220cm')
      budget_comfort_premium_dmo(208500, 278500, 348500)
    elsif size_dmo('180cm', '200cm')
      budget_comfort_premium_dmo(178500, 248500, 278500)
    elsif size_dmo('180cm', '210cm')
      budget_comfort_premium_dmo(198500, 268500, 318500)
    elsif size_dmo('180cm', '220cm')
      budget_comfort_premium_dmo(218500, 288500, 358500)
    elsif size_dmo('200cm', '200cm')
      budget_comfort_premium_dmo(198500, 268500, 298500)
    elsif size_dmo('200cm', '210cm')
      budget_comfort_premium_dmo(218500, 288500, 338500)
    elsif size_dmo('200cm', '220cm')
      budget_comfort_premium_dmo(238500, 308500, 378500)
    else
      @price = 0000
    end
  end

  def budget_comfort_premium_dmo(budget, comfort, premium)
    if double_mattress_one_diseases_on?
      @price = premium
    else
      case @double_mattress_one.category
      when 'Budget'
        @price = budget
      when 'Comfort'
        @price = comfort
      when 'Premium'
        @price = premium
      end
    end
  end

  def size_dmo(width, length)
    @double_mattress_one.mattress_width.eql?(width) && @double_mattress_one.mattress_length.eql?(length)
  end

end
