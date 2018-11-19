class RequerimientosController < ApplicationController
  def index
    @requerimiento = Requerimiento.all
  end

  def show
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = Requerimiento.find(params[:id])
  end

  def edit
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = Requerimiento.find(params[:id])
    #@requerimiento = @proyecto.requerimientos.find(params[:id])
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.create(requerimiento_params)
    redirect_to proyecto_path(@proyecto)
  end

  def destroy
    @proyecto = Proyecto.find(params[:proyecto_id])
    @requerimiento = @proyecto.requerimientos.find(params[:id])
    @requerimiento.destroy
    redirect_to proyecto_path(@proyecto)
  end

  def update
    @requerimiento = Requerimiento.find(params[:requerimiento_id])

    if @requerimiento.update(requerimiento_params)
      redirect_to @requerimiento
    else
      render 'edit'
    end
  end

  private
    def requerimiento_params
      params.require(:requerimiento).permit(:nombre, :descripcion)
    end
end
