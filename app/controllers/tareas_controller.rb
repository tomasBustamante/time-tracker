class TareasController < ApplicationController
  def index
    @tarea = Tarea.all
  end

  def show
    @tarea = Tarea.find(params[:id])
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
  end

  def edit
    @tarea = Tarea.find(params[:id])
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    params['tarea']['horas_cargadas'] = 0
    puts tareas_params
    if ((@tarea = @requerimiento.tareas.create(tareas_params)) && @tarea.id)
      flash[:notice] = "La tarea #{@tarea.id} fue creada satisfactoriamente."
      redirect_to proyecto_requerimiento_path(:id => @requerimiento.id)
    else
      render 'requerimientos/show'
    end
  end

  def destroy
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:requerimiento_id])
    @tarea = @requerimiento.tareas.find(params[:id])
    @tarea.destroy
    redirect_to proyecto_requerimiento_path(:id => @requerimiento.id)
  end

  def update
    @tarea = Tarea.find(params[:id])
    @requerimiento = Requerimiento.find(params[:requerimiento_id])
    @proyecto = Proyecto.find(params[:proyecto_id])

    if @tarea.update(tareas_params)
      redirect_to proyecto_requerimiento_tarea_path(@tarea)
    else
      render 'edit'
    end
  end

  private
    def tareas_params
      params.require(:tarea).permit(:descripcion, :horas_estimadas,
        :horas_cargadas, :fecha, :empleado, :estado)
    end
end
