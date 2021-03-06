class DoubleMattressOnesController < ApplicationController

  include DoubleMattressOneTexts
  include DoubleMattressOnePrices
  include SetGraphsOne

  before_action only: [:show] do
    redirect_to_root_if_object_nil(DoubleMattressOne.all.where(session_id: session.id).last)
  end

  def show
    @page_title = t('bestellen_tweepersoons_solo_resultaat.title')
    @meta_title = t('bestellen_tweepersoons_solo_resultaat.meta_title')
    @meta_description = t('bestellen_tweepersoons_solo_resultaat.meta_description')

    @double_mattress_one = DoubleMattressOne.all.where(session_id: session.id).last
    session[:name] = @double_mattress_one.name
    session[:flow] = "double_mattress_one"
    calculate_price_double_mattress_one
    set_graph_variables(DoubleMattressOne)
    set_product_names
    @bmi = calculate_bmi
    @complaints_text = complaints_text
    @firmness_text = firmness_text
    @comfort_text = comfort_text
    @elasticity_text = elasticity_text
    @heat_regulation_text = heat_regulation_text

    session.delete(:answers) if session[:answers]
    session[:answers] = {
      name: @double_mattress_one.name,
      gender: @double_mattress_one.gender,
      age: @double_mattress_one.age,
      weight: @double_mattress_one.weight,
      length: @double_mattress_one.length,
      sleep_position: @double_mattress_one.sleep_position,
      body_shape: @double_mattress_one.body_shape,
      warm_sleeping: @double_mattress_one.warm_sleeping,
      neck_or_back_pain: @double_mattress_one.neck_or_back_pain,
      mattress_length: @double_mattress_one.mattress_length,
      mattress_width: @double_mattress_one.mattress_width,
      comfort: @double_mattress_one.comfort,
      chassis: @double_mattress_one.chassis
    }
  end

  def new
    @page_title = t('bestellen_tweepersoons_solo.title')
    @meta_title = t('bestellen_tweepersoons_solo.meta_title')
    @meta_description = t('bestellen_tweepersoons_solo.meta_description')

    @double_mattress_one = DoubleMattressOne.new
  end

  def create
    @double_mattress_one = DoubleMattressOne.new( double_mattress_one_params.merge({ session_id: session.id }) )

    respond_to do |format|
      if @double_mattress_one.save
        format.html { redirect_to bestellen_tweepersoons_solo_resultaat_url }
        format.json { render :show, status: :created, location: bestellen_tweepersoons_solo_resultaat_url }
      else
        format.html { render :new }
        format.json { render json: @double_mattress_one.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def double_mattress_one_complaints?
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    !mattress.neck_or_back_pain.include?("Nee, geen klachten") && !mattress.neck_or_back_pain.nil?
  end
  helper_method :double_mattress_one_complaints?

  # Never trust parameters from the scary internet, only allow the white list through.
  def double_mattress_one_params
    params.require(:double_mattress_one).permit(:name, :gender, :age, :email, :weight,
                                                :length, :sleep_position, :body_shape, :warm_sleeping,
                                                :neck_or_back_pain, :session_id, :mattress_length,
                                                :mattress_width, :comfort, :chassis)
  end

  def set_product_names
    length = @mattress.mattress_length.to_s[0..-3]
    width = @mattress.mattress_width.to_s[0..-3]
    size = width + 'x' + length
    @mattress_product = "1x - "  + ' Tenzen Matras ' + size + ' - ' + @mattress.name
    session[:mattress] = @mattress_product
  end
end
