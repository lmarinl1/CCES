class FormsController < ApplicationController
  
  def new
  	id_evento = params[:id]
    @evento = Evento.find(id_evento)
    @form = Form.new
  	
  end

  def agradecer
  	id_asistente = params[:id]
    @asistente = Form.find(id_asistente)
  end

  def create
  	id_evento = params[:id]
  	@asistente = Form.new(form_params)
    @asistente.creador = 0
    @asistente.modificador = 0
    @asistente.evento = id_evento

    if @asistente.save
      redirect_to form_agradecer_url(@asistente.id)
    else
      redirect_to forms_url(id_evento)
    end
    

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @aporte = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:creador, :modificador, :evento, :nombre,:celular, :correo, :empresa, :descripcion)
    end
end

 
