class AportesController < ApplicationController
  before_action :set_aporte, only: [:show, :edit, :update, :destroy]

  # GET /aportes
  # GET /aportes.json
  def index
    if current_user.id == 1 then
      @aportes = Aporte.all
    else
      @aportes = Aporte.where(activo: true)
    end
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
    @aporte.creador = current_user.id
    @aporte.modificador = current_user.id

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
      if @aporte.update(aporte_params) and @aporte.update_attributes(:modificador => current_user.id)
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
    if @aporte.update_attributes(:activo => false,:modificador => current_user.id)
      redirect_to aportes_url
    else
      format.html { render :edit }
      format.json { render json: @aporte.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aporte
      @aporte = Aporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aporte_params
      params.require(:aporte).permit(:activo, :modificador, :creador, :descripcion, :nombre, :picture)
    end
end
