module DoubleMattressOneTexts
  extend ActiveSupport::Concern
  include DoubleMattressOneBmi

  # Comfort
  def comfort_text
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    comfort = mattress.comfort

    case comfort
    when 'Zacht'
      t("advice.comfort_soft")
    when 'Niet hard, niet zacht'
      t("advice.comfort_not_soft_not_hard")
    when 'Hard'
      t("advice.comfort_hard")
    end
  end

  # Elasticiteit
  def elasticity_text
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    sleep_position = mattress.sleep_position
    body_shape = mattress.body_shape

    case sleep_position # 2
    when 'Rug'
      case body_shape # 3
      when 'Ik heb brede schouders'
        t("advice.elasticity_back_broad_shoulders")
      when 'Ik heb brede heupen'
        t("advice.elasticity_back_broad_hips")
      when 'Ik heb brede schouders en heupen'
        t("advice.elasticity_back_broad_shoulders_and_hips")
      when 'Geen van bovenstaande'
        t("advice.elasticity_back_none_of_the_above")
      end
    when 'Zij'
      case body_shape # 3
      when 'Ik heb brede schouders'
        t("advice.elasticity_side_broad_shoulders")
      when 'Ik heb brede heupen'
        t("advice.elasticity_side_broad_hips")
      when 'Ik heb brede schouders en heupen'
        t("advice.elasticity_side_broad_shoulders_and_hips")
      when 'Geen van bovenstaande'
        t("advice.elasticity_side_none_of_the_above")
      end
    when 'Buik'
      t("advice.elasticity_stomach")
    end
  end

  # Stevigheid
  def firmness_text
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    sleep_position = mattress.sleep_position
    body_shape = mattress.body_shape

    case firmness # 1
    when 'Soft'
      case sleep_position # 2
      when 'Rug'
        t("advice.firmness_soft_back")
      when 'Zij'
        t("advice.firmness_soft_side")
      when 'Buik'
        t("advice.firmness_soft_stomach")
      end

    when 'Medium'
      case sleep_position # 2
      when 'Rug'
        t("advice.firmness_medium_back")
      when 'Zij'
        t("advice.firmness_medium_side")
      when 'Buik'
        t("advice.firmness_medium_stomach")
      end

    when 'Firm'
      case sleep_position # 2
      when 'Rug'
        t("advice.firmness_firm_back")
      when 'Zij'
        t("advice.firmness_firm_side")
      when 'Buik'
        t("advice.firmness_firm_stomach")
      end

    when 'Very_firm'
      case sleep_position # 2
      when 'Rug'
        t("advice.firmness_very_firm_back")
      when 'Zij'
        t("advice.firmness_very_firm_side")
      when 'Buik'
        t("advice.firmness_very_firm_stomach")
      end
    end
  end

  # Warmte-regulatie
  def heat_regulation_text
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    warm_sleeping = mattress.warm_sleeping

    case warm_sleeping
    when 'Koud'
      t("advice.heat_regulation_cold")
    when 'Warm'
      t("advice.heat_regulation_warm")
    when 'Niet warm, niet koud'
      t("advice.heat_regulation_not_warm_not_cold")
    end
  end

end
