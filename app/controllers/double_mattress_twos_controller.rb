class DoubleMattressTwosController < ApplicationController

  include DoubleMattressTwoTexts
  include DoubleMattressTwoPrices

  def index
    @double_mattress_twos = DoubleMattressTwo.all.where(session_id: session.id)
  end

  def show
    @double_mattress_two = DoubleMattressTwo.all.where(session_id: session.id).last
    session[:name] = @double_mattress_two.name
    calculate_price

    @both_persons_names = @double_mattress_two.name + ' & ' + @double_mattress_two.name2
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
  end

  def new
    @double_mattress_two = DoubleMattressTwo.new
  end

  def create
    @double_mattress_two = DoubleMattressTwo.new( double_mattress_two_params.merge({ session_id: session.id }) )

    respond_to do |format|
      if @double_mattress_two.save
        format.html { redirect_to @double_mattress_two, notice: 'Jullie droommatras is aangemaakt!' }
        format.json { render :show, status: :created, location: @double_mattress_two }
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
end
