class ZonasController < ApplicationController
  before_action :set_zona, only: [:show, :edit, :update, :destroy]

  # GET /zonas
  # GET /zonas.json
  def index
    if current_user.id == 1 then
      @zonas = Zona.all
    else
      @zonas = Zona.where(activo: true)
    end
  end

  # GET /zonas/1
  # GET /zonas/1.json
  def show
  end

  # GET /zonas/new
  def new
    @zona = Zona.new
  end

  # GET /zonas/1/edit
  def edit
  end

  # POST /zonas
  # POST /zonas.json
  def create
    @zona = Zona.new(zona_params)
    @zona.creador = current_user.id
    @zona.modificador = current_user.id

    respond_to do |format|
      if @zona.save
        format.html { redirect_to @zona, notice: 'Zona was successfully created.' }
        format.json { render :show, status: :created, location: @zona }
      else
        format.html { render :new }
        format.json { render json: @zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zonas/1
  # PATCH/PUT /zonas/1.json
  def update
    respond_to do |format|
      if @zona.update(zona_params) and @zona.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @zona, notice: 'Zona was successfully updated.' }
        format.json { render :show, status: :ok, location: @zona }
      else
        format.html { render :edit }
        format.json { render json: @zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zonas/1
  # DELETE /zonas/1.json
  def destroy
    if @zona.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to zonas_url
    else
      format.html { render :edit }
      format.json { render json: @zona.errors, status: :unprocessable_entity }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona
      @zona = Zona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zona_params
      params.require(:zona).permit(:nombre, :municipio, :activo, :modificador, :creador, :lmap, :descripcion)
    end
end
