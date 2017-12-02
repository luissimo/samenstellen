class DoubleMattressTwosController < ApplicationController

  include DoubleMattressTwoTexts
  include DoubleMattressTwoPrices
  include SetGraphsTwo

  def show
    @page_title = t('bestellen_tweepersoons_duo_resultaat.title')
    @meta_title = t('bestellen_tweepersoons_duo_resultaat.meta_title')
    @meta_description = t('bestellen_tweepersoons_duo_resultaat.meta_description')

    @double_mattress_two = DoubleMattressTwo.all.where(session_id: session.id).last
    session[:name] = @double_mattress_two.name + ' & ' + @double_mattress_two.name2
    session[:flow] = "double_mattress_two"
    calculate_price_double_mattress_two

    @both_persons_names = @double_mattress_two.name + ' & ' + @double_mattress_two.name2
    set_graph_variables(DoubleMattressTwo)
    set_product_names

    # person 1
    @person_1_name = @double_mattress_two.name + ':'
    @bmi = calculate_bmi
    @comfort_text = comfort_text
    @elasticity_text = elasticity_text
    @firmness_text = firmness_text
    @heat_regulation_text = heat_regulation_text
    # person 2
    @person_2_name = @double_mattress_two.name2 + ':'
    @bmi_2 = calculate_bmi_2
    @comfort_text_2 = comfort_text_2
    @elasticity_text_2 = elasticity_text_2
    @firmness_text_2 = firmness_text_2
    @heat_regulation_text_2 = heat_regulation_text_2

    session.delete(:answers) if session[:answers]
    session[:answers] = {
      name: @double_mattress_two.name,
      name2: @double_mattress_two.name2,
      gender: @double_mattress_two.gender,
      gender2: @double_mattress_two.gender2,
      age: @double_mattress_two.age,
      age2: @double_mattress_two.age2,
      weight: @double_mattress_two.weight,
      weight2: @double_mattress_two.weight2,
      length: @double_mattress_two.length,
      length2: @double_mattress_two.length2,
      sleep_position: @double_mattress_two.sleep_position,
      sleep_position2: @double_mattress_two.sleep_position2,
      body_shape: @double_mattress_two.body_shape,
      body_shape2: @double_mattress_two.body_shape2,
      warm_sleeping: @double_mattress_two.warm_sleeping,
      warm_sleeping2: @double_mattress_two.warm_sleeping2,
      neck_or_back_pain: @double_mattress_two.neck_or_back_pain,
      neck_or_back_pain2: @double_mattress_two.neck_or_back_pain2,
      mattress_length: @double_mattress_two.mattress_length,
      mattress_width: @double_mattress_two.mattress_width,
      category: @double_mattress_two.category,
      comfort: @double_mattress_two.comfort,
      comfort2: @double_mattress_two.comfort2,
      diseases: @double_mattress_two.diseases,
      diseases2: @double_mattress_two.diseases2,
      chassis: @double_mattress_two.chassis,
      separation: @double_mattress_two.separation
    }
  end

  def new
    @page_title = t('bestellen_tweepersoons_duo.title')
    @meta_title = t('bestellen_tweepersoons_duo.meta_title')
    @meta_description = t('bestellen_tweepersoons_duo.meta_description')

    @double_mattress_two = DoubleMattressTwo.new
  end

  def create
    @double_mattress_two = DoubleMattressTwo.new( double_mattress_two_params.merge({ session_id: session.id }) )

    respond_to do |format|
      if @double_mattress_two.save
        format.html { redirect_to bestellen_tweepersoons_duo_resultaat_url }
        format.json { render :show, status: :created, location: bestellen_tweepersoons_duo_resultaat_url }
      else
        format.html { render :new }
        format.json { render json: @double_mattress_two.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def double_mattress_two_diseases_on?
      mattress = DoubleMattressTwo.all.where(session_id: session.id).last
      mattress.diseases.include?("on") unless mattress.diseases.nil?
    end
    helper_method :double_mattress_two_diseases_on?

    def double_mattress_two_diseases2_on?
      mattress = DoubleMattressTwo.all.where(session_id: session.id).last
      mattress.diseases2.include?("on") unless mattress.diseases2.nil?
    end
    helper_method :double_mattress_two_diseases2_on?

    # Never trust parameters from the scary internet, only allow the white list through.
    def double_mattress_two_params
      params.require(:double_mattress_two).permit(:name, :name2, :gender, :gender2, :age, :age2,
                                                  :email, :weight, :weight2, :length, :length2,
                                                  :sleep_position, :sleep_position2, :body_shape,
                                                  :body_shape2, :warm_sleeping, :warm_sleeping2,
                                                  :neck_or_back_pain, :neck_or_back_pain2, :session_id,
                                                  :mattress_length, :mattress_width, :category, :comfort,
                                                  :comfort2, :chassis, :separation, diseases: [], diseases2: [])
    end

    def set_product_names
      chassis = @mattress.chassis
      separation = @mattress.separation

      category = double_mattress_two_diseases_on? ? 'Premium' : @mattress.category
      category2 = double_mattress_two_diseases2_on? ? 'Premium' : @mattress.category
      fused_category = category.eql?('Premium') || category2.eql?("Premium") ? "Premium" : category
      fused_category2 = category.eql?('Premium') || category2.eql?("Premium") ? "Premium" : category2

      length = @mattress.mattress_length.to_s[0..-3]
      width = @mattress.mattress_width.to_s[0..-3]
      size = width + 'x' + length
      half_size = (width.to_i / 2).to_s + 'x' + (length.to_i / 2).to_s

      case chassis
      when 'Ja'
        case separation
        when 'Een tweepersoonsmatras'
          @mattress_product = "1x - " +  fused_category + ' Tenzen Matras '+ size + ' - ' + @mattress.name
          @mattress_product2 = "1x - " +  fused_category2 + ' Tenzen Matras '+ size + ' - ' + @mattress.name2
          @topper_product = "1x - " + fused_category + ' Tenzen Split Topdekmatras ' + size + ' - ' + @mattress.name + ' & ' + @mattress.name2
          session[:mattress] = @mattress_product
          session[:mattress2] = @mattress_product2
          session[:topper] = @topper_product
        when 'Twee eenpersoonsmatrassen'
          @mattress_product = "1x - " +  category + ' Tenzen Matras ' + half_size + ' - ' + @mattress.name
          @mattress_product2 = "1x - " +  category2 + ' Tenzen Matras ' + half_size + ' - ' + @mattress.name2
          @topper_product = "1x - " + category + ' Tenzen Topdekmatras ' + half_size + ' - ' + @mattress.name
          @topper_product2 = "1x - " + category2 + ' Tenzen Topdekmatras ' + half_size + ' - ' + @mattress.name2
          session[:mattress] = @mattress_product
          session[:mattress2] = @mattress_product2
          session[:topper] = @topper_product
          session[:topper2] = @topper_product2
        end
      when 'Nee'
        case separation
        when 'Een tweepersoonsmatras'
          @mattress_product = "1x - " +  fused_category + ' Tenzen Matras ' + size + ' - ' + @mattress.name + ' & ' + @mattress.name2
          @topper_product = "1x - " + fused_category2 + ' Tenzen Split Topdekmatras ' + size + ' - ' + @mattress.name + ' & ' + @mattress.name2
          session[:mattress] = @mattress_product
          session[:topper] = @topper_product
        when 'Twee eenpersoonsmatrassen'
          @mattress_product = "1x - " +  category + ' Tenzen Matras ' + half_size + ' - ' + @mattress.name
          @mattress_product2 = "1x - " +  category2 + ' Tenzen Matras ' + half_size + ' - ' + @mattress.name2
          @topper_product = "1x - " + category + ' Tenzen Topdekmatras ' + half_size + ' - ' + @mattress.name
          @topper_product2 = "1x - " + category2 + ' Tenzen Topdekmatras ' + half_size + ' - ' + @mattress.name2
          session[:mattress] = @mattress_product
          session[:mattress2] = @mattress_product2
          session[:topper] = @topper_product
          session[:topper2] = @topper_product2
        end
      end
    end
end
