class VoluntariosController < ApplicationController
  before_action :set_voluntario, only: [:show, :edit, :update, :destroy]

  # GET /voluntarios
  # GET /voluntarios.json
  def index
    if current_user.id ==  1 then
      @voluntarios = Voluntario.all
    else
      @voluntarios = Voluntario.where(activo: true)
    end
  end

  # GET /voluntarios/1
  # GET /voluntarios/1.json
  def show
  end

  # GET /voluntarios/new
  def new
    @voluntario = Voluntario.new
    if current_user.id == 1 then
      ms = Municipio.all
      zs = Zona.all
      pv = PuntoV.all
      em = Empresa.all 
      un = Universidad.all
    else
      ms = Municipio.where(activo: true)
      zs = Zona.where(activo: true)
      pv = PuntoV.where(activo: true)
      em = Empresa.where(activo: true) 
      un = Universidad.where(activo: true)
    end
    @municipios = [['Sin Seleccionar',(-1).to_int]]
    ms.each do |m|
      @municipios.push([m.nombre,m.id])
    end
    @zonas = [['Sin Seleccionar',(-1).to_int]]
    zs.each do |z|
      @zonas.push([z.nombre,z.id])
    end
    @puntovs = [['Sin Seleccionar',(-1).to_int]]
    pv.each do |p|
      @puntovs.push([p.nombre,p.id])
    end
    @empresas = [['Sin Seleccionar',(-1).to_int]]
    em.each do |e|
      @empresas.push([e.nombre,e.id])
    end
    @universidads = [['Sin Seleccionar',(-1).to_int]]
    un.each do |u|
      @universidads.push([u.nombre,u.id])
    end
    respond_to do |f|
      f.js 
    end
  end

  # GET /voluntarios/1/edit
  def edit
  end

  # POST /voluntarios
  # POST /voluntarios.json
  def create
    @voluntario = Voluntario.new(voluntario_params)
    @voluntario.creador = current_user.id
    @voluntario.modificador = current_user.id

    respond_to do |format|
      if @voluntario.save
        format.html { redirect_to @voluntario, notice: 'Voluntario was successfully created.' }
        format.json { render :show, status: :created, location: @voluntario }
      else
        format.html { render :new }
        format.json { render json: @voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntarios/1
  # PATCH/PUT /voluntarios/1.json
  def update
    respond_to do |format|
      if @voluntario.update(voluntario_params) and @voluntario.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @voluntario, notice: 'Voluntario was successfully updated.' }
        format.json { render :show, status: :ok, location: @voluntario }
      else
        format.html { render :edit }
        format.json { render json: @voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntarios/1
  # DELETE /voluntarios/1.json
  def destroy
    if @voluntario.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to voluntarios_url
    else
      format.html { render :edit }
      format.json { render json: @voluntario.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario
      @voluntario = Voluntario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voluntario_params
      params.require(:voluntario).permit(:cedula, :nombre, :apellido, :nacimiento, :perfil, :email, :creador, :activo, :modificador, :cel, :zona, :municipio, :instagram, :facebook, :twitter, :whatsapp, :descripcion, :direccion, :sexo, :puntov, :empresa, :cargo, :universidad, :carrera, :votos)
    end
end
