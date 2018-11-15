class Proyecto < ApplicationRecord
  validates :nombre, presence: true, length: { minimum: 5 }
end
