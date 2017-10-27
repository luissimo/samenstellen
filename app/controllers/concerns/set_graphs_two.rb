module SetGraphsTwo
  extend ActiveSupport::Concern

    def set_graph_variables(model_instance)
      @mattress = model_instance.all.where(session_id: session.id).last
      comfort = @mattress.comfort
      comfort2 = @mattress.comfort2
      sleep_position = @mattress.sleep_position
      sleep_position2 = @mattress.sleep_position2
      body_shape = @mattress.body_shape
      body_shape2 = @mattress.body_shape2
      heat_regulation = @mattress.warm_sleeping
      heat_regulation2 = @mattress.warm_sleeping2

      # Comfort
      case comfort
      when 'Zacht'
        @comfort_graph_text = 'Je krijgt een zacht matras.'
        @comfort_dot = 'comfort_dot_0'
      when 'Niet hard, niet zacht'
        @comfort_graph_text = 'Je krijgt een matras dat niet te hard en niet te zacht is.'
        @comfort_dot = 'comfort_dot_1'
      when 'Hard'
        @comfort_graph_text = 'Je krijgt een matras dat hard is.'
        @comfort_dot = 'comfort_dot_2'
      end

      # Comfort person 2
      case comfort2
      when 'Zacht'
        @comfort_graph_text_2 = 'Je krijgt een zacht matras.'
        @comfort_dot_2 = 'comfort_dot_0'
      when 'Niet hard, niet zacht'
        @comfort_graph_text_2 = 'Je krijgt een matras dat niet te hard en niet te zacht is.'
        @comfort_dot_2 = 'comfort_dot_1'
      when 'Hard'
        @comfort_graph_text_2 = 'Je krijgt een matras dat hard is.'
        @comfort_dot_2 = 'comfort_dot_2'
      end

      # Elasticiteit
      case sleep_position
      when 'Rug'
        case body_shape
        when 'Geen van bovenstaande'
          @elasticity_graph_text = 'Je krijgt een matras met een lage elasticiteit'
          @elasticity_dot = 'elasticity_dot_0'
        else
          @elasticity_graph_text = 'Je krijgt een matras met een hoge elasticiteit'
          @elasticity_dot = 'elasticity_dot_1'
        end
      when 'Zij'
        case body_shape
        when 'Geen van bovenstaande'
          @elasticity_graph_text = 'Je krijgt een matras met een hoge elasticiteit'
          @elasticity_dot = 'elasticity_dot_1'
        else
          @elasticity_graph_text = 'Je krijgt een matras met een zeer hoge elasticiteit'
          @elasticity_dot = 'elasticity_dot_2'
        end
      when 'Buik'
        @elasticity_graph_text = 'Je krijgt een matras met een lage elasticiteit'
        @elasticity_dot = 'elasticity_dot_0'
      end

      # Elasticiteit person 2
      case sleep_position2
      when 'Rug'
        case body_shape2
        when 'Geen van bovenstaande'
          @elasticity_graph_text_2 = 'Je krijgt een matras met een lage elasticiteit'
          @elasticity_dot_2 = 'elasticity_dot_0'
        else
          @elasticity_graph_text_2 = 'Je krijgt een matras met een hoge elasticiteit'
          @elasticity_dot_2 = 'elasticity_dot_1'
        end
      when 'Zij'
        case body_shape2
        when 'Geen van bovenstaande'
          @elasticity_graph_text_2 = 'Je krijgt een matras met een hoge elasticiteit'
          @elasticity_dot_2 = 'elasticity_dot_1'
        else
          @elasticity_graph_text_2 = 'Je krijgt een matras met een zeer hoge elasticiteit'
          @elasticity_dot_2 = 'elasticity_dot_2'
        end
      when 'Buik'
        @elasticity_graph_text_2 = 'Je krijgt een matras met een lage elasticiteit'
        @elasticity_dot_2 = 'elasticity_dot_0'
      end

      # Stevigheid
      case sleep_position
      when 'Rug', 'Zij'
        case firmness
        when 'Soft'
          @firmness_graph_text = 'Je krijgt een matras met een soepele stevigheid.'
          @firmness_dot = 'firmness_dot_0'
        when 'Medium'
          @firmness_graph_text = 'Je krijgt een matras met een medium stevigheid.'
          @firmness_dot = 'firmness_dot_1'
        when 'Firm'
          @firmness_graph_text = 'Je krijgt een stevig matras.'
          @firmness_dot = 'firmness_dot_2'
        when 'Very_firm'
          @firmness_graph_text = 'Je krijgt een zeer stevig matras.'
          @firmness_dot = 'firmness_dot_3'
        end
      when 'Buik'
        case firmness
        when 'Soft'
          @firmness_graph_text = 'Je krijgt een matras met een medium stevigheid.'
          @firmness_dot = 'firmness_dot_1'
        when 'Medium'
          @firmness_graph_text = 'Je krijgt een stevig matras.'
          @firmness_dot = 'firmness_dot_2'
        when 'Firm'
          @firmness_graph_text = 'Je krijgt een zeer stevig matras.'
          @firmness_dot = 'firmness_dot_3'
        when 'Very_firm'
          @firmness_graph_text = 'Je krijgt een uiterst stevig matras.'
          @firmness_dot = 'firmness_dot_4'
        end
      end

      # Stevigheid person 2
      case sleep_position2
      when 'Rug', 'Zij'
        case firmness2
        when 'Soft'
          @firmness_graph_text_2 = 'Je krijgt een matras met een soepele stevigheid.'
          @firmness_dot_2 = 'firmness_dot_0'
        when 'Medium'
          @firmness_graph_text_2 = 'Je krijgt een matras met een medium stevigheid.'
          @firmness_dot_2 = 'firmness_dot_1'
        when 'Firm'
          @firmness_graph_text_2 = 'Je krijgt een stevig matras.'
          @firmness_dot_2 = 'firmness_dot_2'
        when 'Very_firm'
          @firmness_graph_text_2 = 'Je krijgt een zeer stevig matras.'
          @firmness_dot_2 = 'firmness_dot_3'
        end
      when 'Buik'
        case firmness2
        when 'Soft'
          @firmness_graph_text_2 = 'Je krijgt een matras met een medium stevigheid.'
          @firmness_dot_2 = 'firmness_dot_1'
        when 'Medium'
          @firmness_graph_text_2 = 'Je krijgt een stevig matras.'
          @firmness_dot_2 = 'firmness_dot_2'
        when 'Firm'
          @firmness_graph_text_2 = 'Je krijgt een zeer stevig matras.'
          @firmness_dot_2 = 'firmness_dot_3'
        when 'Very_firm'
          @firmness_graph_text_2 = 'Je krijgt een uiterst stevig matras.'
          @firmness_dot_2 = 'firmness_dot_4'
        end
      end

      # Warmte-regulatie
      case heat_regulation
      when 'Niet warm, niet koud'
        @heat_regulation_graph_text = 'Je krijgt een matras dat niet koud en niet warm zal aanvoelen.'
        @heat_regulation_dot = 'heat_regulation_dot_0'
      when 'Warm'
        @heat_regulation_graph_text = 'Je krijgt een matras dat koud zal aanvoelen.'
        @heat_regulation_dot = 'heat_regulation_dot_1'
      when 'Koud'
        @heat_regulation_graph_text = 'Je krijgt een matras dat warm zal aanvoelen.'
        @heat_regulation_dot = 'heat_regulation_dot_2'
      end

      # Warmte-regulatie person 2
      case heat_regulation2
      when 'Niet warm, niet koud'
        @heat_regulation_graph_text_2 = 'Je krijgt een matras dat niet koud en niet warm zal aanvoelen.'
        @heat_regulation_dot_2 = 'heat_regulation_dot_0'
      when 'Warm'
        @heat_regulation_graph_text_2 = 'Je krijgt een matras dat koud zal aanvoelen.'
        @heat_regulation_dot_2 = 'heat_regulation_dot_1'
      when 'Koud'
        @heat_regulation_graph_text_2 = 'Je krijgt een matras dat warm zal aanvoelen.'
        @heat_regulation_dot_2 = 'heat_regulation_dot_2'
      end
    end
end
