class Animal < ApplicationRecord
  belongs_to :animal_type
  #scope :changos, -> { AnimalType.find_by(nombre: "Mono").animals }
  #scope :changos, -> { where(animal_type_id: 1) }
  #scope :changos, -> { where(animal_type: AnimalType.find_by(nombre: "Mono") }

  scope :tipoAnimal, ->(tipo) {where(animal_type: AnimalType.find_by(nombre: tipo)) }
  #scope :tipoAnimal, ->(tipo) {AnimalType.find_by(nombre: tipo).animals }

  scope :ultimos, -> {order("id desc").limit(5)}
  #scope :ultimos, -> {last(5)}

  #Animal.tipoAnimal("Perro").ultimos  : desde la comsola concatena los scope

  def self.tipo2(tipo)
    AnimalType.find_by(nombre: tipo).animals
  end

  def self.ultimos_5
    self.last(5)
  end

end
