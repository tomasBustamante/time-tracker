class RegistroHora < ApplicationRecord
  belongs_to :tarea
  validates :horas, numericality: {
    greater_than: 0,
    message: "cargadas deben ser mayores a cero." }
end
