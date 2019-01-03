class EstefansController < ApplicationController
  before_action :set_estefan, only: [:show, :edit, :update, :destroy]

  # GET /estefans
  # GET /estefans.json
  def index
    if current_user.id == 1 then
      @estefans = Estefan.all
    else
      @estefans = Estefan.where(activo: true)
    end
  end

  # GET /estefans/1
  # GET /estefans/1.json
  def show
  end

  # GET /estefans/new
  def new
    @estefan = Estefan.new
    if current_user.id == 1 then
      ms = Municipio.all
      zs = Zona.all
      pv = PuntoV.all
    else
      ms = Municipio.where(activo: true)
      zs = Zona.where(activo: true)
      pv = PuntoV.where(activo: true)
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
    respond_to do |f|
      f.js 
    end
  end

  # GET /estefans/1/edit
  def edit
  end

  # POST /estefans
  # POST /estefans.json
  def create
    @estefan = Estefan.new(estefan_params)
    @estefan.creador = current_user.id
    @estefan.modificador = current_user.id
    @user = create_user(@estefan.email)

    respond_to do |format|
      if @estefan.save and @user.save
        format.html { redirect_to @estefan, notice: 'Estefan was successfully created.' }
        format.json { render :show, status: :created, location: @estefan }
      else
        format.html { render :new }
        format.json { render json: @estefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estefans/1
  # PATCH/PUT /estefans/1.json
  def update
    respond_to do |format|
      if @estefan.update(estefan_params) and @estefan.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @estefan, notice: 'Estefan was successfully updated.' }
        format.json { render :show, status: :ok, location: @estefan }
      else
        format.html { render :edit }
        format.json { render json: @estefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estefans/1
  # DELETE /estefans/1.json
  def destroy
    if @estefan.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to estefans_url
    else
      format.html { render :edit }
      format.json { render json: @estefan.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estefan
      @estefan = Estefan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estefan_params
      params.require(:estefan).permit(:cedula, :nombre, :apellido, :nacimento, :cargo, :email, :creador, :activo, :modificador, :cel, :zona, :municipio, :instagram, :facebook, :twitter, :whatsapp, :descripcion, :sexo, :puntov)
    end

    def create_user(email)
      user = User.new
      user.email = email
      user.password = '123456'
      return user
    end
end
