class RegistroHorasController < ApplicationController
  def index
    @proyectos = Proyecto.all
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @requerimiento.tareas.find(params[:tarea_id])
    horas_cargadas_prev = @tarea.horas_cargadas + 0
    horas_cargadas_post = @tarea.horas_cargadas + params['registro_hora']['horas'].to_i
    suma = 0
    @tarea.registro_horas.each do |registro_hora|
      suma += registro_hora.horas if registro_hora.fecha == params['registro_hora']['fecha'].to_date
    end
    puts suma
    if (suma + params['registro_hora']['horas'].to_i) > 8
      @tarea.errors.add(:horas_cargadas, ': no pueden ser más de ocho por día.')
      render 'tareas/show'
    else
      @registro_hora = @tarea.registro_horas.create(registro_horas_params)
      if !@registro_hora.errors.any?
        if @tarea.update({"horas_cargadas" => horas_cargadas_post})
          if (@tarea.horas_cargadas == @tarea.horas_estimadas)
            @tarea.update({"estado" => "Finalizado"})
            flash[:notice] = "¡Enhorabuena! ¡Has finalizado la tarea!."
          end
          redirect_to [@tarea.requerimiento.proyecto, @tarea.requerimiento, @tarea]
        else
          @tarea.registro_horas.delete(@registro_hora.id)
          @registro_hora.destroy
          @tarea.horas_cargadas = horas_cargadas_prev
          render 'tareas/show'
        end
      else
        render 'tareas/show'
      end
    end
  end

  private
    def registro_horas_params
      params.require(:registro_hora).permit(:horas, :recurso, :fecha)
    end
end
