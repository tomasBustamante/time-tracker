class Requerimiento < ApplicationRecord
  belongs_to :proyecto
  has_many :tareas, dependent: :destroy
  validates :nombre, presence: true, length: { minimum: 5 }
  validates :descripcion, presence: true, length: { minimum: 10 }
end
