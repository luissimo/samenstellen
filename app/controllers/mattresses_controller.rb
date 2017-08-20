class MattressesController < ApplicationController

  # GET /mattresses
  # GET /mattresses.json
  def index
    @mattresses = Mattress.all.where(session_id: session.id)
  end

  # GET /mattresses/1
  # GET /mattresses/1.json
  def show
    @mattress = Mattress.all.where(session_id: session.id).last
    calculate_prize
  end

  # GET /mattresses/new
  def new
    @mattress = Mattress.new
  end

  # POST /mattresses
  # POST /mattresses.json
  def create
    @mattress = Mattress.new(mattress_params.merge({ session_id: session.id}) )

    respond_to do |format|
      if @mattress.save
        format.html { redirect_to @mattress, notice: 'Mattress was successfully created.' }
        format.json { render :show, status: :created, location: @mattress }
      else
        format.html { render :new }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def mattress_params
    params.require(:mattress).permit(:id, :session_id, :name, :gender, :age,
                                     :email, :weight, :length, :sleep_position, :body_shape,
                                     :warm_sleeping, :diseases, :neck_or_back_pain, :mattress_length,
                                     :mattress_width, :category)
  end

  # 1 PERSOONS MATRAS PRIJZEN
  def calculate_prize
    @mattress = Mattress.all.where(session_id: session.id).last

    if size('80cm', '200cm')
      budget_comfort_deluxe(355, 519, 789)
    elsif size('80cm', '210cm')
      budget_comfort_deluxe(409, 599, 889)
    elsif size('80cm', '220cm')
      budget_comfort_deluxe(469, 679, 999)
    elsif size('90cm', '200cm')
      budget_comfort_deluxe(399, 459, 839)
    elsif size('90cm', '210cm')
      budget_comfort_deluxe(469, 639, 939)
    elsif size('90cm', '220cm')
      budget_comfort_deluxe(489, 709, 1029)
    elsif size('100cm', '200cm')
      budget_comfort_deluxe(469, 599, 889)
    elsif size('100cm', '210cm')
      budget_comfort_deluxe(539, 669, 975)
    elsif size('100cm', '220cm')
      budget_comfort_deluxe(619, 749, 1049)
    else
      @prize = 0
    end
  end

  def budget_comfort_deluxe(budget, comfort, deluxe)
    case @mattress.category
    when 'Budget'
      @prize = budget
    when 'Comfort'
      @prize = comfort
    when 'Deluxe'
      @prize = deluxe
    end
  end

  def size(width, length)
    @mattress.mattress_width.eql?(width) && @mattress.mattress_length.eql?(length)
  end
end
