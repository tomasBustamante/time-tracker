class Recurso < ApplicationRecord
  validates :nombre, presence: true, length: { minimum: 5 }
end
