class MattressesController < ApplicationController

  include MattressPrices
  include MattressTexts
  include SetGraphsOne

  def show
    @mattress = Mattress.all.where(session_id: session.id).last
    session[:name] = @mattress.name
    session[:flow] = "mattress"
    calculate_price
    set_graph_variables(Mattress)
    set_product_names
    @bmi = calculate_bmi
    @firmness_text = firmness_text
    @comfort_text = comfort_text
    @elasticity_text = elasticity_text
    @heat_regulation_text = heat_regulation_text
  end

  def new
    @mattress = Mattress.new
  end

  def create
    @mattress = Mattress.new(mattress_params.merge({ session_id: session.id}) )

    respond_to do |format|
      if @mattress.save
        format.html { redirect_to @mattress }
        format.json { render :show, status: :created, location: @mattress }
      else
        format.html { render :new }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def diseases_on?
      mattress = Mattress.all.where(session_id: session.id).last
      mattress.diseases.include?("on") unless mattress.diseases.nil?
    end
    helper_method :diseases_on?

    # Never trust parameters from the scary internet, only allow the white list through.
    def mattress_params
      params.require(:mattress).permit(:id, :session_id, :name, :gender, :age,
                                       :email, :weight, :length, :sleep_position, :body_shape,
                                       :warm_sleeping, :neck_or_back_pain, :mattress_length,
                                       :mattress_width, :comfort, :category, :chassis, diseases: [])
    end

    def set_product_names
      category = diseases_on? ? 'Premium' : @mattress.category
      length = @mattress.mattress_length.to_s[0..-3]
      width = @mattress.mattress_width.to_s[0..-3]
      size = width + 'x' + length
      @mattress_product = "1x - " +  category + ' Tenzen Matras '+ size + ' - ' + @mattress.name
      @topper_product = "1x - " + category + ' Tenzen Topdekmatras ' + size + ' - ' + @mattress.name
      session[:mattress] = @mattress_product
      session[:topper] = @topper_product
    end
end