class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.where(activo: true)
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    if @empresa.update_attributes(:activo => false)
      format.html { redirect_to empresas_url, notice: 'La empresa ha sido eliminada correctamente.' }
    else
      format.html { render :edit }
      format.json { render json: @empresa.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:municipio, :activo, :modificador, :creador, :descripcion, :nombre, :nit, :nroEmpleados, :direccion, :facebook, :twitter, :instagram, :web)
    end
end
