class PuntoVsController < ApplicationController
  before_action :set_punto_v, only: [:show, :edit, :update, :destroy]

  # GET /punto_vs
  # GET /punto_vs.json
  def index
    if current_user.id == 1 then
      @punto_vs = PuntoV.all
    else
      @punto_vs = PuntoV.where(activo: true)
    end
  end

  # GET /punto_vs/1
  # GET /punto_vs/1.json
  def show
  end

  # GET /punto_vs/new
  def new
    @punto_v = PuntoV.new
  end

  # GET /punto_vs/1/edit
  def edit
  end

  # POST /punto_vs
  # POST /punto_vs.json
  def create
    @punto_v = PuntoV.new(punto_v_params)
    @punto_v.creador = current_user.id
    @punto_v.modificador = current_user.id

    respond_to do |format|
      if @punto_v.save
        format.html { redirect_to @punto_v, notice: 'Punto v was successfully created.' }
        format.json { render :show, status: :created, location: @punto_v }
      else
        format.html { render :new }
        format.json { render json: @punto_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punto_vs/1
  # PATCH/PUT /punto_vs/1.json
  def update
    respond_to do |format|
      if @punto_v.update(punto_v_params) and update_attributes(:modificador => current_user.id)
        format.html { redirect_to @punto_v, notice: 'Punto v was successfully updated.' }
        format.json { render :show, status: :ok, location: @punto_v }
      else
        format.html { render :edit }
        format.json { render json: @punto_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punto_vs/1
  # DELETE /punto_vs/1.json
  def destroy
    if @punto_v.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to punto_v_url
    else
      format.html { render :edit }
      format.json { render json: @punto_v.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punto_v
      @punto_v = PuntoV.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punto_v_params
      params.require(:punto_v).permit(:nombre, :zona, :picture, :activo, :modificador, :creador, :descripcion, :direccion, :nromesas, :nropersonasmesa, :hombres, :mujeres)
    end
end
