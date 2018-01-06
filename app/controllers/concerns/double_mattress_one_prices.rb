module DoubleMattressOnePrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price_double_mattress_one
    @double_mattress_one = DoubleMattressOne.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size_dmo('140cm', '200cm')
      standard_medical_dmo(79500, 248500)
    elsif size_dmo('140cm', '210cm')
      standard_medical_dmo(89500, 298500)
    elsif size_dmo('140cm', '220cm')
      standard_medical_dmo(99500, 338500)
    elsif size_dmo('160cm', '200cm')
      standard_medical_dmo(89500, 268500)
    elsif size_dmo('160cm', '210cm')
      standard_medical_dmo(99500, 308500)
    elsif size_dmo('160cm', '220cm')
      standard_medical_dmo(109500, 348500)
    elsif size_dmo('180cm', '200cm')
      standard_medical_dmo(95000, 278500)
    elsif size_dmo('180cm', '210cm')
      standard_medical_dmo(105000, 318500)
    elsif size_dmo('180cm', '220cm')
      standard_medical_dmo(115000, 358500)
    elsif size_dmo('200cm', '200cm')
      standard_medical_dmo(105000, 298500)
    elsif size_dmo('200cm', '210cm')
      standard_medical_dmo(115000, 338500)
    elsif size_dmo('200cm', '220cm')
      standard_medical_dmo(125000, 378500)
    else
      @price = 0000
    end
  end

  def standard_medical_dmo(standard, medical)
    if double_mattress_one_diseases_on?
      @price = medical
    else
      @price = standard
    end
  end

  def size_dmo(width, length)
    @double_mattress_one.mattress_width.eql?(width) && @double_mattress_one.mattress_length.eql?(length)
  end

end
