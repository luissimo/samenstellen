class MattressesController < ApplicationController

  include MattressPrices
  include MattressTexts
  include SetGraphsOne

  before_action only: [:show] do
    redirect_to_root_if_object_nil(Mattress.all.where(session_id: session.id).last)
  end

  def show
    @page_title = t('bestellen_eenpersoons_resultaat.title')
    @meta_title = t('bestellen_eenpersoons_resultaat.meta_title')
    @meta_description = t('bestellen_eenpersoons_resultaat.meta_description')

    @mattress = Mattress.all.where(session_id: session.id).last
    session[:flow] = "mattress"
    calculate_price
    set_graph_variables(Mattress)
    set_product_names
    # results texts
    @bmi = calculate_bmi
    @complaints_text = complaints_text
    @firmness_text = firmness_text
    @comfort_text = comfort_text
    @elasticity_text = elasticity_text
    @heat_regulation_text = heat_regulation_text

    session.delete(:answers) if session[:answers]
    session[:answers] = {
      name: @mattress.name,
      gender: @mattress.gender,
      age: @mattress.age,
      weight: @mattress.weight,
      length: @mattress.length,
      sleep_position: @mattress.sleep_position,
      body_shape: @mattress.body_shape,
      warm_sleeping: @mattress.warm_sleeping,
      neck_or_back_pain: @mattress.neck_or_back_pain,
      mattress_length: @mattress.mattress_length,
      mattress_width: @mattress.mattress_width,
      comfort: @mattress.comfort
    }
  end

  def new
    @page_title = t('bestellen_eenpersoons.title')
    @meta_title = t('bestellen_eenpersoons.meta_title')
    @meta_description = t('bestellen_eenpersoons.meta_description')
    @mattress = Mattress.new
  end

  def create
    @mattress = Mattress.new(mattress_params.merge({ session_id: session.id}) )

    respond_to do |format|
      if @mattress.save
        format.html { redirect_to bestellen_eenpersoons_resultaat_url }
        format.json { render :show, status: :created, location: bestellen_eenpersoons_resultaat_url }
      else
        format.html { render :new }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def complaints?
    mattress = Mattress.all.where(session_id: session.id).last
    !mattress.neck_or_back_pain.include?("Nee, geen klachten") && !mattress.neck_or_back_pain.nil?
  end
  helper_method :complaints?

  # Never trust parameters from the scary internet, only allow the white list through.
  def mattress_params
    params.require(:mattress).permit(:id, :session_id, :name, :gender, :age,
                                     :email, :weight, :length, :sleep_position, :body_shape,
                                     :warm_sleeping, :neck_or_back_pain, :mattress_length,
                                     :mattress_width, :comfort)
  end

  def set_product_names
    length = @mattress.mattress_length.to_s[0..-3]
    width = @mattress.mattress_width.to_s[0..-3]
    size = width + 'x' + length
    @mattress_product = "1x - " + ' Tenzen Matras ' + size + ' - ' + @mattress.name
    session[:mattress] = @mattress_product
  end
end
