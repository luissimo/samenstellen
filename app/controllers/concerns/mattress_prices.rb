module MattressPrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price
    @mattress = Mattress.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size('80cm', '200cm')
      standard_medical(55000, 134500)
    elsif size('80cm', '210cm')
      standard_medical(59500, 154500)
    elsif size('80cm', '220cm')
      standard_medical(65000, 174500)
    elsif size('90cm', '200cm')
      standard_medical(57500, 139500)
    elsif size('90cm', '210cm')
      standard_medical(62500, 159500)
    elsif size('90cm', '220cm')
      standard_medical(67500, 179500)
    elsif size('100cm', '200cm')
      standard_medical(62500, 149500)
    elsif size('100cm', '210cm')
      standard_medical(67500, 169500)
    elsif size('100cm', '220cm')
      standard_medical(75000, 189500)
    else
      @price = 0000
    end
  end

  def standard_medical(standard, medical)
    if diseases_on?
      @price = medical
    else
      @price = standard
    end
  end

  def size(width, length)
    @mattress.mattress_width.eql?(width) && @mattress.mattress_length.eql?(length)
  end

end
