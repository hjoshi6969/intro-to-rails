# Load JSON data
require 'json'
require 'net/http'

Breed.destroy_all
Category.destroy_all
BreedsCategory.destroy_all


# Fetch JSON data from the API
uri = URI('https://dog.ceo/api/breeds/list/all')
response = Net::HTTP.get(uri)
json_data = JSON.parse(response)

# Create categories
puts("Catogeries: ")
json_data['message'].each do |breed_name, categories|
  categories.each do |category_name|
    category = Category.find_or_create_by(name: category_name)
    puts("          => "+category.name)
  end
end

# Create breeds
puts("Breeds: ")
json_data['message'].keys.each do |breed_name|
  breed = Breed.create(name: breed_name)
  puts("          => "+breed.name)
end

# Create breeds and associate with categories
puts("Breeds and category association: ")
json_data['message'].each do |breed_name, categories|
  breed = Breed.find_by(name: breed_name)
  breed_id = breed.id if breed.present?
  if !categories.empty?
    categories.each do |category_name|
      category = Category.find_by(name: category_name)
      category_id = category.id if category.present?
      puts("Category")
      puts(category_id)
      puts("Breeds")
      puts(breed_id)
      association = BreedsCategory.create(breed_id: breed_id, category_id: category_id) # Corrected 'BreedsCategory' here
    end
  end
end
