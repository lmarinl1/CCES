class PoliticosController < ApplicationController
  before_action :set_politico, only: [:show, :edit, :update, :destroy]

  # GET /politicos
  # GET /politicos.json
  def index
    @politicos = Politico.where(activo: true)
  end

  # GET /politicos/1
  # GET /politicos/1.json
  def show
  end

  # GET /politicos/new
  def new
    @politico = Politico.new
  end

  # GET /politicos/1/edit
  def edit
  end

  # POST /politicos
  # POST /politicos.json
  def create
    @politico = Politico.new(politico_params)

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
      if @politico.update(politico_params)
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
    if @politico.update_attributes(:activo => false)
      format.html { redirect_to politicos_url, notice: 'El politico ha sido eliminado correctamente' }
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
      params.require(:politico).permit(:municipio, :activo, :modificador, :creador, :descripcion, :nombre, :apellido, :cedula, :sexo, :partido, :telefono, :celular, :email, :whatsapp, :instagram, :twitter, :facebook, :puntov, :cNombre, :cCel1, :cCel2, :cTel, :cWhatsapp, :cEmail)
    end
end
