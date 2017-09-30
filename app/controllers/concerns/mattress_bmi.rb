module MattressBmi
  extend ActiveSupport::Concern

  def calculate_bmi
    @mattress = Mattress.all.where(session_id: session.id).last
    return unless @mattress.weight? && @mattress.length?
    @mattress.weight.to_f / (@mattress.length.to_f * @mattress.length.to_f)
  end


  def mattress_soft?
    calculate_bmi < 0.00191
  end

  def mattress_medium?
    calculate_bmi > 0.00190 && calculate_bmi < 0.00232
  end

  def mattress_firm?
    calculate_bmi > 0.00231 && calculate_bmi < 0.00279
  end

  def mattress_very_firm?
    calculate_bmi > 0.00278
  end

end
