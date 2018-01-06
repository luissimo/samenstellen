module DoubleMattressTwoPrices
  extend ActiveSupport::Concern

  # 2 PERSOONS MATRAS PRIJZEN
  def calculate_price_double_mattress_two
    @double_mattress_two = DoubleMattressTwo.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size_dmt('140cm', '200cm')
      standard_medical_dmt(79500, 248500)
    elsif size_dmt('140cm', '210cm')
      standard_medical_dmt(89500, 298500)
    elsif size_dmt('140cm', '220cm')
      standard_medical_dmt(99500, 338500)
    elsif size_dmt('160cm', '200cm')
      standard_medical_dmt(89500, 268500)
    elsif size_dmt('160cm', '210cm')
      standard_medical_dmt(99500, 308500)
    elsif size_dmt('160cm', '220cm')
      standard_medical_dmt(109500, 348500)
    elsif size_dmt('180cm', '200cm')
      standard_medical_dmt(95000, 278500)
    elsif size_dmt('180cm', '210cm')
      standard_medical_dmt(105000, 318500)
    elsif size_dmt('180cm', '220cm')
      standard_medical_dmt(115000, 358500)
    elsif size_dmt('200cm', '200cm')
      standard_medical_dmt(105000, 298500)
    elsif size_dmt('200cm', '210cm')
      standard_medical_dmt(115000, 338500)
    elsif size_dmt('200cm', '220cm')
      standard_medical_dmt(125000, 378500)
    else
      @price = 0000
    end
  end

  def standard_medical_dmt(standard, medical)
    if double_mattress_two_diseases_on? || double_mattress_two_diseases2_on?
      @price = medical
    else
      @price = standard
    end
  end

  def size_dmt(width, length)
    @double_mattress_two.mattress_width.eql?(width) && @double_mattress_two.mattress_length.eql?(length)
  end

end
