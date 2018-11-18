class Proyecto < ApplicationRecord
  has_many :requerimientos
  validates :nombre, presence: true, length: { minimum: 5 }
  validates :descripcion, presence: true, length: { minimum: 10 }
end
