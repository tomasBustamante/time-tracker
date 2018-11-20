class RegistroHorasController < ApplicationController
  def index
    @proyectos = Proyecto.all
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @requerimiento.tareas.find(params[:tarea_id])
    @registro_hora = @tarea.registro_horas.create(registro_horas_params)
    redirect_to proyecto_requerimiento_tarea_path(:id => @tarea.id)
  end

  def cargar_horas
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @requerimiento.tareas.find(params[:tarea_id])

    begin
      @tarea.cargar_horas(registro_horas_params[:horas], registro_horas_params[:fecha])
      self.create
    rescue StandardError => e
      puts e
    end

  end

  private
    def registro_horas_params
      params.require(:registro_hora).permit(:horas, :recurso, :fecha)
    end
end
