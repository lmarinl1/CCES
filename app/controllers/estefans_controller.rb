class EstefansController < ApplicationController
  before_action :set_estefan, only: [:show, :edit, :update, :destroy]

  # GET /estefans
  # GET /estefans.json
  def index
    @estefans = Estefan.where(activo: true)
  end

  # GET /estefans/1
  # GET /estefans/1.json
  def show
  end

  # GET /estefans/new
  def new
    @estefan = Estefan.new
  end

  # GET /estefans/1/edit
  def edit
  end

  # POST /estefans
  # POST /estefans.json
  def create
    @estefan = Estefan.new(estefan_params)

    respond_to do |format|
      if @estefan.save
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
      if @estefan.update(estefan_params)
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
    if @estefan.update_attributes(:activo => false)
      format.html { redirect_to estefans_url, notice: 'El usuario ha sido eliminado correctamente' }
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
end
