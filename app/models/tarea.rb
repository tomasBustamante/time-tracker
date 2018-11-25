class Tarea < ApplicationRecord
  belongs_to :requerimiento
  has_many :registro_horas, dependent: :destroy
  validates :descripcion, presence: true, length: {
    minimum: 5,
    message: "debe tener por lo menos 5 caracteres."
  }
  validates :horas_estimadas, presence: true, numericality: {
    greater_than: 0,
    message: "deben ser mayores a cero."
  }
  # validates :horas_cargadas, numericality: {
  #   greater_than_or_equal_to: 0,
  #   message: "no pueden ser negativas."
  # }
  validates :horas_cargadas, numericality: {
    less_than_or_equal_to: :horas_estimadas,
    message: "no deben superar a las horas estimadas."
  }
  before_save :default_values

  def default_values
    self.estado = 'Inicial' if self.estado.nil?
    self.horas_cargadas = 0 if self.horas_cargadas.nil?
  end

end
