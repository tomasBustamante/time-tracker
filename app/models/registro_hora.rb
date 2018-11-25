class RegistroHora < ApplicationRecord
  belongs_to :tarea

  validates :horas, presence: true, length: { minimum: 1 }
end
