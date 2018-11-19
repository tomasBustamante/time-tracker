class RegistroHorasController < ApplicationController
  def index
    @proyectos = Proyecto.all
  end
end
