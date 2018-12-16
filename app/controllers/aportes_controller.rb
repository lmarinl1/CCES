class AportesController < ApplicationController
  before_action :set_aporte, only: [:show, :edit, :update, :destroy]

  # GET /aportes
  # GET /aportes.json
  def index
    @aportes = Aporte.all
  end

  # GET /aportes/1
  # GET /aportes/1.json
  def show
  end

  # GET /aportes/new
  def new
    @aporte = Aporte.new
  end

  # GET /aportes/1/edit
  def edit
  end

  # POST /aportes
  # POST /aportes.json
  def create
    @aporte = Aporte.new(aporte_params)

    respond_to do |format|
      if @aporte.save
        format.html { redirect_to @aporte, notice: 'Aporte was successfully created.' }
        format.json { render :show, status: :created, location: @aporte }
      else
        format.html { render :new }
        format.json { render json: @aporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aportes/1
  # PATCH/PUT /aportes/1.json
  def update
    respond_to do |format|
      if @aporte.update(aporte_params)
        format.html { redirect_to @aporte, notice: 'Aporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @aporte }
      else
        format.html { render :edit }
        format.json { render json: @aporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aportes/1
  # DELETE /aportes/1.json
  def destroy
    @aporte.destroy
    respond_to do |format|
      format.html { redirect_to aportes_url, notice: 'Aporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aporte
      @aporte = Aporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aporte_params
      params.require(:aporte).permit(:activo, :modificador, :creador, :descripcion, :nombre)
    end
end
