class AnimalType < ApplicationRecord
  validates :nombre, presence: true
  has_many :animals

  scope :changos, -> { where(nombre: "Mono") }

  #scope :changos, -> { AnimalType.find_by(nombre: "Mono").animals }
  #scope :changos, -> { where(animal_type_id: 1) }
  #scope :changos, -> { where(animal_type: AnimalType.find_by(nombre: "Mono") }

  def self.changos2
    where(nombre: "Mono")
  end

end
