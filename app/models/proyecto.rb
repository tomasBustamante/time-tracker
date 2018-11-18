class Proyecto < ApplicationRecord
  validates :nombre, presence: true, length: { minimum: 5 }
  validates :descripcion, presence: true, length: { minimum: 10 }
end
