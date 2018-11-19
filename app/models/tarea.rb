class Tarea < ApplicationRecord
  belongs_to :requerimiento
  validates :descripcion, presence: true, length: { minimum: 5 }
end
