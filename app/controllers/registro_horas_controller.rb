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

  private
    def registro_horas_params
      params.require(:registro_hora).permit(:horas, :recurso, :fecha)
    end
end
