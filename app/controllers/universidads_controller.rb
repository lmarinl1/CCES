class UniversidadsController < ApplicationController
  before_action :set_universidad, only: [:show, :edit, :update, :destroy]

  # GET /universidads
  # GET /universidads.json
  def index
    if current_user.id == 1 then
      @universidads = Universidad.all
    else
      @universidads = Universidad.where(activo: true)
    end
  end

  # GET /universidads/1
  # GET /universidads/1.json
  def show
  end

  # GET /universidads/new
  def new
    @universidad = Universidad.new
    if current_user.id == 1 then
      ms = Municipio.all
    else
      ms = Municipio.where(activo: true)
    end
    @municipios = []
    ms.each do |m|
      @municipios.push([m.nombre,m.id])
    end
    respond_to do |f|
      f.js 
    end
  end

  # GET /universidads/1/edit
  def edit
  end

  # POST /universidads
  # POST /universidads.json
  def create
    @universidad = Universidad.new(universidad_params)
    @universidad.creador = current_user.id
    @universidad.modificador = current_user.id

    respond_to do |format|
      if @universidad.save
        format.html { redirect_to @universidad, notice: 'Universidad was successfully created.' }
        format.json { render :show, status: :created, location: @universidad }
      else
        format.html { render :new }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universidads/1
  # PATCH/PUT /universidads/1.json
  def update
    respond_to do |format|
      if @universidad.update(universidad_params) and @universidad.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @universidad, notice: 'Universidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @universidad }
      else
        format.html { render :edit }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universidads/1
  # DELETE /universidads/1.json
  def destroy
    if @universidad.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to universidads_url
    else
      format.html { render :edit }
      format.json { render json: @universidad.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universidad
      @universidad = Universidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def universidad_params
      params.require(:universidad).permit(:municipio, :picture, :activo, :modificador, :creador, :descripcion, :nombre, :nit, :nroEstudiantes, :direccion, :facebook, :twitter, :instagram, :web)
    end
end
