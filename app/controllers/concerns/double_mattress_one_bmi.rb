module DoubleMattressOneBmi
  extend ActiveSupport::Concern

  def calculate_bmi
    @mattress = DoubleMattressOne.all.where(session_id: session.id).last
    return unless @mattress.weight? && @mattress.length?
    bmi = (@mattress.weight.to_f / (@mattress.length.to_f * @mattress.length.to_f)) * 10000
    bmi.to_i
  end

  def firmness
    if mattress_soft?
      'Soft'
    elsif mattress_medium?
      'Medium'
    elsif mattress_firm?
      'Firm'
    elsif mattress_very_firm?
      'Very_firm'
    end
  end

  def mattress_soft?
    calculate_bmi <= 19
  end

  def mattress_medium?
    calculate_bmi > 19 && calculate_bmi <= 23
  end

  def mattress_firm?
    calculate_bmi > 23 && calculate_bmi <= 28
  end

  def mattress_very_firm?
    calculate_bmi > 28
  end

end
