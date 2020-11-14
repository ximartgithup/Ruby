class CiudadsController < ApplicationController
  before_action :set_ciudad, only: [:show, :edit, :update, :destroy]

  # GET /ciudads
  # GET /ciudads.json
  def index
    @ciudads = Ciudad.all
  end

  # GET /ciudads/1
  # GET /ciudads/1.json
  def show
  end

  # GET /ciudads/new
  def new
    @ciudad = Ciudad.new
  end

  # GET /ciudads/1/edit
  def edit
  end

  # POST /ciudads
  # POST /ciudads.json
  def create
    @ciudad = Ciudad.new(ciudad_params)

    respond_to do |format|
      if @ciudad.save
        format.html { redirect_to @ciudad, notice: 'Ciudad was successfully created.' }
        format.json { render :show, status: :created, location: @ciudad }
      else
        format.html { render :new }
        format.json { render json: @ciudad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ciudads/1
  # PATCH/PUT /ciudads/1.json
  def update
    respond_to do |format|
      if @ciudad.update(ciudad_params)
        format.html { redirect_to @ciudad, notice: 'Ciudad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ciudad }
      else
        format.html { render :edit }
        format.json { render json: @ciudad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudads/1
  # DELETE /ciudads/1.json
  def destroy
    @ciudad.destroy
    respond_to do |format|
      format.html { redirect_to ciudads_url, notice: 'Ciudad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciudad
      @ciudad = Ciudad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ciudad_params
      params.require(:ciudad).permit(:nombre, :habitantes)
    end
end
