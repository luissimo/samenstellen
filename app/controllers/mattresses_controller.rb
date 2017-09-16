class MattressesController < ApplicationController

  include MattressPrices

  # GET /mattresses
  # GET /mattresses.json
  def index
    @mattresses = Mattress.all.where(session_id: session.id)
  end

  # GET /mattresses/1
  # GET /mattresses/1.json
  def show
    @mattress = Mattress.all.where(session_id: session.id).last
    # calculate_price
    @price = 0001
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
end