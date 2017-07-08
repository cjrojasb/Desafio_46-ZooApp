# README

1. Crear el proyecto zoo
   rails new ZooApp -d postgresql

2. Crear el modelo animal_type con atributo nombre
   rails g model Animal_type nombre

3. Crear el modelo animal con nombre y referencia a animal_type
   rails g model Animal nombre animal_type:references

4. Revisar y correr las migraciones
   rails db:create
   rake db:migrate

5. Establecer la relación de 1 a N en ambos modelos
   desde animal_type.rb: has_many :animals

6. Validar la presencia del nombre del tipo de animal
   desde animal_type.rb: validates :nombre, presence: true

7. Instanciar un chango como tipo de animal
   new_a = AnimalType.new(nombre: "Mono")

8. Ver si es válido
   AnimalType.all

9. Guardar al chango
   new_a.save

10. Instanciar un tipo de animal sin nombre
    valid = AnimalType.new().valid?
 

11. Ver si es válido, ver los errores
    
    2.3.1 :042 > valid = AnimalType.new().valid?
     => false 

12. Crear a pancho, un animal del tipo chango 
    at = AnimalType.find_by(nombre: "Mono")
    at.animals.build(nombre: "Pancho").save

  
