class DoubleMattressOnesController < ApplicationController

  include DoubleMattressOneTexts
  include DoubleMattressOnePrices
  include SetGraphsOne

  def index
    @double_mattress_ones = DoubleMattressOne.all.where(session_id: session.id)
  end

  def show
    @double_mattress_one = DoubleMattressOne.all.where(session_id: session.id).last
    session[:name] = @double_mattress_one.name
    calculate_price
    set_graph_variables(DoubleMattressOne)
    @bmi = calculate_bmi
    @firmness_text = firmness_text
    @comfort_text = comfort_text
    @elasticity_text = elasticity_text
    @heat_regulation_text = heat_regulation_text
  end

  def new
    @double_mattress_one = DoubleMattressOne.new
  end

  def create
    @double_mattress_one = DoubleMattressOne.new( double_mattress_one_params.merge({ session_id: session.id }) )

    respond_to do |format|
      if @double_mattress_one.save
        format.html { redirect_to @double_mattress_one, notice: 'Je droommatras is aangemaakt!' }
        format.json { render :show, status: :created, location: @double_mattress_one }
      else
        format.html { render :new }
        format.json { render json: @double_mattress_one.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def double_mattress_one_diseases_on?
      mattress = DoubleMattressOne.all.where(session_id: session.id).last
      mattress.diseases.include?("on") unless mattress.diseases.nil?
    end
    helper_method :double_mattress_one_diseases_on?

    # Never trust parameters from the scary internet, only allow the white list through.
    def double_mattress_one_params
      params.require(:double_mattress_one).permit(:name, :gender, :age, :email, :weight,
                                                  :length, :sleep_position, :body_shape, :warm_sleeping,
                                                  :neck_or_back_pain, :session_id, :mattress_length,
                                                  :mattress_width, :category, :comfort, :chassis, diseases: [])
    end
end
