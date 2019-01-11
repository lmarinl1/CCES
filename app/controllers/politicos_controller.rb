class PoliticosController < ApplicationController
  before_action :set_politico, only: [:show, :edit, :update, :destroy]

  # GET /politicos
  # GET /politicos.json
  def index
    if current_user.id == 1 then
      @politicos = Politico.all
    else
      @politicos = Politico.where(activo: true)
    end
  end

  # GET /politicos/1
  # GET /politicos/1.json
  def show
  end

  # GET /politicos/new
  def new
    @politico = Politico.new
    if current_user.id == 1 then
      ms = Municipio.all
      pv = PuntoV.all
    else
      ms = Municipio.where(activo: true) 
      pv = PuntoV.where(activo: true)
    end
    # municipio
    @municipios = []
    ms.each do |m|
      @municipios.push([m.nombre,m.id])
    end
    # PuntoV
    @puntovs = []
    pv.each do |p|
      @puntovs.push([p.nombre,p.id])
    end
    @partidos = [
      ['Partido Centro Democrático'], 
      ['Partido Liberal Colombiano'], 
      ['Partido Conservador Colombiano'],
      ['Partido Opción Ciudadana'], 
      ['Partido Cambio Radical'], 
      ['Partido Alianza Verde'], 
      ['Partido Alianza Social Independiente ASI'], 
      ['Partido Político MIRA'], 
      ['Partido de la U'], 
      ['Partido Polo Democrático Alternativo'], 
      ['Partido Unión Patriótica'], 
      ['Partido Somos'], 
      ['Partido Fuerza Alternativa Revolucionaria del Común Farc'],
      ['Otro']
    ]
    respond_to do |f|
      f.js 
    end
  end

  # GET /politicos/1/edit
  def edit
  end

  # POST /politicos
  # POST /politicos.json
  def create
    @politico = Politico.new(politico_params)
    @politico.creador = current_user.id
    @politico.modificador = current_user.id

    respond_to do |format|
      if @politico.save
        format.html { redirect_to @politico, notice: 'Politico was successfully created.' }
        format.json { render :show, status: :created, location: @politico }
      else
        format.html { render :new }
        format.json { render json: @politico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politicos/1
  # PATCH/PUT /politicos/1.json
  def update
    respond_to do |format|
      if @politico.update(politico_params) and @politico.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @politico, notice: 'Politico was successfully updated.' }
        format.json { render :show, status: :ok, location: @politico }
      else
        format.html { render :edit }
        format.json { render json: @politico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politicos/1
  # DELETE /politicos/1.json
  def destroy
    if @politico.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to politicos_url
    else
      format.html { render :edit }
      format.json { render json: @politico.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politico
      @politico = Politico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def politico_params
      params.require(:politico).permit(:municipio, :activo, :picture, :modificador, :creador, :descripcion, :nombre, :apellido, :cedula, :sexo, :partido, :telefono, :celular, :email, :whatsapp, :instagram, :twitter, :facebook, :puntov, :cNombre, :cCel1, :cCel2, :cTel, :cWhatsapp, :cEmail)
    end
end
