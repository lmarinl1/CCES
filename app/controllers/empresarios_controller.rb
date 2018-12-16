class EmpresariosController < ApplicationController
  before_action :set_empresario, only: [:show, :edit, :update, :destroy]

  # GET /empresarios
  # GET /empresarios.json
  def index
    @empresarios = Empresario.where(activo: true)
  end

  # GET /empresarios/1
  # GET /empresarios/1.json
  def show
  end

  # GET /empresarios/new
  def new
    @empresario = Empresario.new
  end

  # GET /empresarios/1/edit
  def edit
  end

  # POST /empresarios
  # POST /empresarios.json
  def create
    @empresario = Empresario.new(empresario_params)

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
      if @empresario.update(empresario_params)
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
    if @empresario.update_attributes(:activo => false)
      format.html { redirect_to empresarios_url, notice: 'El empresario ha sido eliminado correctamente.' }
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
      params.require(:empresario).permit(:municipio, :activo, :modificador, :creador, :descripcion, :nombre, :apellido, :cedula, :sexo, :empresa, :telefono, :celular, :email, :whatsapp, :instagram, :twitter, :facebook, :puntov, :cNombre, :cCel1, :cCel2, :cTel, :cWhatsapp, :cEmail)
    end
end
