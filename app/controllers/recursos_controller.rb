class RecursosController < ApplicationController
    def index
        @recursos = Recurso.all
    end
    
    def show
        @recurso = Recurso.find(params[:id])
    end
    
    def new
        @recurso = Recurso.new
    end

    def create
        @recurso = Recurso.new(recurso_params)
     
        if @recurso.save
          redirect_to @recurso
        else
          render 'new'
        end
    end

    def update
        @recurso = Recurso.find(params[:id])
    
        if @recurso.update(recurso_params)
          redirect_to @recurso
        else
          render 'edit'
        end
      end
    
    def destroy
        @recurso = Recurso.find(params[:id])
        @recurso.destroy
    
        redirect_to recursos_path
      end

    private
        def recurso_params
        params.require(:recurso).permit(:nombre, :rol)
        end
end
