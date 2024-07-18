# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

# Creating cities
paris = City.create(city_name: 'Paris')
lyon = City.create(city_name: 'Lyon')

# Creating dogsitters
dogsitter1 = Dogsitter.create(first_name: 'John', last_name: 'Doe', city: paris)
dogsitter2 = Dogsitter.create(first_name: 'Jane', last_name: 'Smith', city: lyon)

# Creating dogs
dog1 = Dog.create(name: 'Rex', breed: 'Labrador', city: paris)
dog2 = Dog.create(name: 'Fido', breed: 'Bulldog', city: lyon)

# Creating strolls
Stroll.create(date: DateTime.now, dogsitter: dogsitter1, dog: dog1)
Stroll.create(date: DateTime.now + 1.day, dogsitter: dogsitter2, dog: dog2)
