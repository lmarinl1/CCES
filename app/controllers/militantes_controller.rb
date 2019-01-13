class MilitantesController < ApplicationController
  before_action :set_militante, only: [:show, :edit, :update, :destroy]

  # GET /militantes
  # GET /militantes.json
  def index
     if current_user.id ==  1 then
      @militantes = Militante.all
    else
      @militantes = Militante.where(activo: true)
    end
  end 

  # GET /militantes/1
  # GET /militantes/1.json
  def show
  end

  # GET /militantes/new
  def new
    @militante = Militante.new
    if current_user.id == 1 then
      ms = Municipio.all
      pv = PuntoV.all
      zn = Zona.all
    else
      ms = Municipio.where(activo: true)
      pv = PuntoV.where(activo: true)
      zn = Zona.where(activo: true)
    end
    @municipios = [['Sin Seleccionar',(-1).to_int]]
    ms.each do |m|
      @municipios.push([m.nombre,m.id])
    end
    @puntovs = [['Sin Seleccionar',(-1).to_int]]
    pv.each do |p|
      @puntovs.push([p.nombre,p.id])
    end
    @zonas = [['Sin Seleccionar',(-1).to_int]]
    zn.each do |z|
      @zonas.push([z.nombre,z.id])
    end
    respond_to do |f|
      f.js 
    end
  end

  # GET /militantes/1/edit
  def edit
  end

  # POST /militantes
  # POST /militantes.json
  def create
    @militante = Militante.new(militante_params)
    @militante.creador = current_user.id
    @militante.modificador = current_user.id

    respond_to do |format|
      if @militante.save
        format.html { redirect_to @militante, notice: 'Militante was successfully created.' }
        format.json { render :show, status: :created, location: @militante }
      else
        format.html { render :new }
        format.json { render json: @militante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /militantes/1
  # PATCH/PUT /militantes/1.json
  def update
    respond_to do |format|
      if @militante.update(militante_params) and @militante.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @militante, notice: 'Militante was successfully updated.' }
        format.json { render :show, status: :ok, location: @militante }
      else
        format.html { render :edit }
        format.json { render json: @militante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /militantes/1
  # DELETE /militantes/1.json
  def destroy
    if @militante.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to militantes_url
    else
      format.html { render :edit }
      format.json { render json: @militante.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_militante
      @militante = Militante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def militante_params
      params.require(:militante).permit(:nombre, :apellido, :cedula, :fechaexp, :sexo, :nacimiento, :creador, :modificador, :activo, :ocupacion, :profesion, :email, :cel, :tel, :municipio, :puntov, :zona)
    end
end
