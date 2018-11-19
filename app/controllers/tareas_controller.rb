class TareasController < ApplicationController
  def index
    @tarea = Tarea.all
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @proyecto.requerimientos.tareas.create(tareas_params)
    redirect_to [requerimiento.proyecto, requerimiento]
  end

  private
    def tareas_params
      params.require(:tarea).permit(:descripcion, :horas_estimadas,
        :horas_cargadas, :fecha, :empleado, :estado)
    end
end
