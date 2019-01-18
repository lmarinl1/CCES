class EventosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_evento, only: [:show, :edit, :update, :destroy]

  # GET /eventos
  # GET /eventos.json
  def index
    if current_user.id == 1 then
      @eventos = Evento.all.order(fecha: :asc,hora: :asc)
    else
      @eventos = Evento.where(activo: true).order(fecha: :asc,hora: :asc)
    end
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
    if current_user.id == 1 then
      zs = Zona.all
    else
      zs = Zona.where(activo: true)
    end
    @zonas = []
    zs.each do |z|
      @zonas.push([z.nombre,z.id])
    end
    @tipos = [
      ['Evento para Emprendedores'],
      ['Evento tipo Reunión'],
      ['Evento Político'],
      ['Evento de ciencia y tecnología'],
      ['Evento de educación'],
      ['Otros eventos']
    ]
    respond_to do |f|
      f.js 
    end
  end

  # GET /eventos/1/edit
  def edit
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)
    @evento.creador = current_user.id
    @evento.modificador = current_user.id

    respond_to do |format|
      if @evento.save
        format.html { redirect_to @evento, notice: 'Evento was successfully created.' }
        format.json { render :show, status: :created, location: @evento }
      else
        format.html { render :new }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
    respond_to do |format|
      if @evento.update(evento_params) and @evento.update_attributes(:modificador => current_user.id)
        format.html { redirect_to @evento, notice: 'Evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @evento }
      else
        format.html { render :edit }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    if @evento.update_attributes(:activo => false, :modificador => current_user.id)
      redirect_to eventos_url
    else
      format.html { render :edit }
      format.json { render json: @evento.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evento_params
      params.require(:evento).permit(:zona, :tipo, :asistentes, :mensaje, :picture, :activo, :fecha, :modificador, :creador, :descripcion, :nombre, :direccion, :hora)
    end
end
