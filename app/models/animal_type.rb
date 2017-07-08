class AnimalType < ApplicationRecord
  validates :nombre, presence: true
  has_many :animals
end
