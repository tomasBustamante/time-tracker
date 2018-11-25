class RegistroHorasController < ApplicationController
  def index
    @proyectos = Proyecto.all
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @requerimiento.tareas.find(params[:tarea_id])
    horas_cargadas = @tarea.horas_cargadas
    if @tarea.update({"horas_cargadas" => (@tarea.horas_cargadas + params['registro_hora']['horas'].to_i)})
      puts @tarea.horas_cargadas
      @registro_hora = @tarea.registro_horas.create(registro_horas_params)
      redirect_to [@tarea.requerimiento.proyecto, @tarea.requerimiento, @tarea]
    else
      @tarea.horas_cargadas = horas_cargadas
      render 'tareas/show'
    end
  end

  private
    def registro_horas_params
      params.require(:registro_hora).permit(:horas, :recurso, :fecha)
    end
end
