module MattressPrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price
    @mattress = Mattress.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size('80cm', '190cm')
      @price = 37500
    elsif size('80cm', '200cm')
      @price = 39500
    elsif size('80cm', '210cm')
      @price = 42500
    elsif size('80cm', '220cm')
      @price = 44500
    elsif size('90cm', '190cm')
      @price = 42500
    elsif size('90cm', '200cm')
      @price = 44500
    elsif size('90cm', '210cm')
      @price = 49500
    elsif size('90cm', '220cm')
      @price = 52500
    elsif size('100cm', '190cm')
      @price = 47500
    elsif size('100cm', '200cm')
      @price = 49500
    elsif size('100cm', '210cm')
      @price = 54500
    elsif size('100cm', '220cm')
      @price = 57500
    elsif size('120cm', '190cm')
      @price = 52500
    elsif size('120cm', '200cm')
      @price = 54500
    elsif size('120cm', '210cm')
      @price = 59500
    elsif size('120cm', '220cm')
      @price = 64500
    else
      @price = 0000
    end

    @price = (@price * 0.9).to_i if session[:kortingscode] == 'tenzen10'
  end

  def size(width, length)
    @mattress = Mattress.all.where(session_id: session.id).last
    @mattress.mattress_width.eql?(width) && @mattress.mattress_length.eql?(length)
  end

end
