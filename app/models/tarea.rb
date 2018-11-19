class Tarea < ApplicationRecord
  belongs_to :requerimiento
  validates :descripcion, presence: true, length: { minimum: 5 }
  before_save :default_values
  def default_values
    self.estado = 'Inicial' if self.estado.nil?
    self.horas_cargadas = 0 if self.horas_cargadas.nil?
  end
end
