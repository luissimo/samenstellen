module DoubleMattressTwoBmi
  extend ActiveSupport::Concern

  ##### PERSON 1
  def calculate_bmi
    @mattress = DoubleMattressTwo.all.where(session_id: session.id).last
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

  ##### PERSON 2
  def calculate_bmi_2
    @mattress = DoubleMattressTwo.all.where(session_id: session.id).last
    return unless @mattress.weight2? && @mattress.length2?
    bmi = (@mattress.weight2.to_f / (@mattress.length2.to_f * @mattress.length2.to_f)) * 10000
    bmi.to_i
  end

  def firmness2
    if mattress_soft_2?
      'Soft'
    elsif mattress_medium_2?
      'Medium'
    elsif mattress_firm_2?
      'Firm'
    elsif mattress_very_firm_2?
      'Very_firm'
    end
  end

  def mattress_soft_2?
    calculate_bmi_2 <= 19
  end

  def mattress_medium_2?
    calculate_bmi_2 > 19 && calculate_bmi_2 <= 23
  end

  def mattress_firm_2?
    calculate_bmi_2 > 23 && calculate_bmi_2 <= 28
  end

  def mattress_very_firm_2?
    calculate_bmi_2 > 28
  end
end
