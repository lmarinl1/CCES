class EmpresariosController < ApplicationController
  before_action :set_empresario, only: [:show, :edit, :update, :destroy]

  # GET /empresarios
  # GET /empresarios.json
  def index
    if current_user.id == 1 then
      @empresarios = Empresario.all
    else
      @empresarios = Empresario.where(activo: true)
    end
  end

  # GET /empresarios/1
  # GET /empresarios/1.json
  def show
  end

  # GET /empresarios/new
  def new
    @empresario = Empresario.new
    if current_user.id == 1 then
      ms = Municipio.all
      em = Empresa.all 
      pv = PuntoV.all
    else
      ms = Municipio.where(activo: true)
      em = Empresa.where(activo: true) 
      pv = PuntoV.where(activo: true)
    end
    # municipio
    @municipios = [['Sin Seleccionar',(-1).to_int]]
    ms.each do |m|
      @municipios.push([m.nombre,m.id])
    end
    # Empresa
    @empresas = []
    em.each do |e|
      @empresas.push([e.nombre,e.id])
    end
    # PuntoV
    @puntovs = [['Sin Seleccionar',(-1).to_int]]
    pv.each do |p|
      @puntovs.push([p.nombre,p.id])
    end
    respond_to do |f|
      f.js 
    end
  end

  # GET /empresarios/1/edit
  def edit
  end

  # POST /empresarios
  # POST /empresarios.json
  def create
    @empresario = Empresario.new(empresario_params)
    @empresario.creador = current_user.id
    @empresario.modificador = current_user.id

    respond_to do |format|
      if @empresario.save
        format.html { redirect_to @empresario, notice: 'Empresario was successfully created.' }
        format.json { render :show, status: :created, location: @empresario }
      else
        format.html { render :new }
        format.json { render json: @empresario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresarios/1
  # PATCH/PUT /empresarios/1.json
  def update
    respond_to do |format|
      if @empresario.update(empresario_params) and @empresario.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @empresario, notice: 'Empresario was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresario }
      else
        format.html { render :edit }
        format.json { render json: @empresario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresarios/1
  # DELETE /empresarios/1.json
  def destroy
    if @empresario.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to empresarios_url
    else
      format.html { render :edit }
      format.json { render json: @empresario.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresario
      @empresario = Empresario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresario_params
      params.require(:empresario).permit(:municipio, :activo, :modificador, :creador, :descripcion, :nombre, :apellido, :cedula, :sexo, :empresa, :telefono, :celular, :email, :whatsapp, :instagram, :twitter, :facebook, :puntov, :cNombre, :cCel1, :cCel2, :cTel, :cWhatsapp, :cEmail, :picture)
    end
end
