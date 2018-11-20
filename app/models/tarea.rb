class Tarea < ApplicationRecord
  belongs_to :requerimiento
  has_many :registro_horas, dependent: :destroy
  validates :descripcion, presence: true, length: { minimum: 5 }
  before_save :default_values
  
  def default_values
    self.estado = 'Inicial' if self.estado.nil?
    self.horas_cargadas = 0 if self.horas_cargadas.nil?
  end

  def cargar_horas(horas)
    self.horas_cargadas += horas
  end
end
