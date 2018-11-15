class ProyectosController < ApplicationController
  def index
    @proyectos = Proyecto.all
  end

  def show
    @proyecto = Proyecto.find(params[:id])
  end

  def new
    @proyecto = Proyecto.new
  end

  def edit
    @proyecto = Proyecto.find(params[:id])
  end

  def create
    @proyecto = Proyecto.new(proyecto_params)

    if @proyecto.save
      redirect_to @proyecto
    else
      render 'new'
    end
  end

  def update
    @proyecto = Proyecto.find(params[:id])

    if @proyecto.update(proyecto_params)
      redirect_to @proyecto
    else
      render 'edit'
    end
  end

  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto.destroy

    redirect_to proyectos_path
  end

  private
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :descripcion)
    end
end
