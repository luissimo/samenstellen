class MattressesController < ApplicationController
  before_action :set_mattress, only: [:show, :edit, :update, :destroy]

  # GET /mattresses
  # GET /mattresses.json
  def index
    @mattresses = Mattress.all
  end

  # GET /mattresses/1
  # GET /mattresses/1.json
  def show
  end

  # GET /mattresses/new
  def new
    @mattress = Mattress.new
  end

  # GET /mattresses/1/edit
  def edit
  end

  # POST /mattresses
  # POST /mattresses.json
  def create
    @mattress = Mattress.new(mattress_params)

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

  # PATCH/PUT /mattresses/1
  # PATCH/PUT /mattresses/1.json
  def update
    respond_to do |format|
      if @mattress.update(mattress_params)
        format.html { redirect_to @mattress, notice: 'Mattress was successfully updated.' }
        format.json { render :show, status: :ok, location: @mattress }
      else
        format.html { render :edit }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mattresses/1
  # DELETE /mattresses/1.json
  def destroy
    @mattress.destroy
    respond_to do |format|
      format.html { redirect_to mattresses_url, notice: 'Mattress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mattress
      @mattress = Mattress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mattress_params
      params.require(:mattress).permit(:name, :gender, :age, :email, :weight, :length, :sleep_position, :body_shape, :warm_sleeping, :diseases, :size, :neck_or_back_pain)
    end
end
