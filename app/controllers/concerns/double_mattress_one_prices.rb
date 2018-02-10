module DoubleMattressOnePrices
  extend ActiveSupport::Concern

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_price_double_mattress_one
    @double_mattress_one = DoubleMattressOne.all.where(session_id: session.id).last

    # last 2 zeros are eurocents for stripe payments
    if size_dmo('140cm', '190cm')
      @price = 62500
    elsif size_dmo('140cm', '200cm')
      @price = 64500
    elsif size_dmo('140cm', '210cm')
      @price = 72500
    elsif size_dmo('140cm', '220cm')
      @price = 77500
    elsif size_dmo('160cm', '190cm')
      @price = 72500
    elsif size_dmo('160cm', '200cm')
      @price = 74500
    elsif size_dmo('160cm', '210cm')
      @price = 84500
    elsif size_dmo('160cm', '220cm')
      @price = 89500
    elsif size_dmo('180cm', '190cm')
      @price = 82500
    elsif size_dmo('180cm', '200cm')
      @price = 84500
    elsif size_dmo('180cm', '210cm')
      @price = 89500
    elsif size_dmo('180cm', '220cm')
      @price = 94500
    elsif size_dmo('200cm', '190cm')
      @price = 92500
    elsif size_dmo('200cm', '200cm')
      @price = 94500
    elsif size_dmo('200cm', '210cm')
      @price = 99500
    elsif size_dmo('200cm', '220cm')
      @price = 104500
    else
      @price = 0000
    end

    @price = (@price * 0.8).to_i if session[:kortingscode] == 'valentijn20'
  end

  def size_dmo(width, length)
    @double_mattress_one.mattress_width.eql?(width) && @double_mattress_one.mattress_length.eql?(length)
  end

end
