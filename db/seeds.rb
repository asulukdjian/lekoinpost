# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

Garden.destroy_all
puts "gardens destroyed"

User.destroy_all
puts "users destroyed"

clara = User.new(
  first_name: "Clara", 
  last_name: Faker::Name.last_name, 
  email: "clara@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "44 rue Ordener, Paris"
)
# file = URI.open('https://images.unsplash.com/photo-1520423465871-0866049020b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80')
# clara.avatar.attach(io: file, filename: "Clara avatar.png", content_type: 'image/jpg')
clara.save!

gaston = User.new(
  first_name: "Gaston", 
  last_name: Faker::Name.last_name, 
  email: "gaston@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "97, rue Lénine, Bagnolet"
)
# file = URI.open('https://images.unsplash.com/photo-1529928874840-505e8bf2b2a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80')
# gaston.avatar.attach(io: file, filename: "Gaston avatar.png", content_type: 'image/jpg')
gaston.save!

garden1 = Garden.new(
    name: "Gaston's cité fertile",
    description: "Jardin alternatif bio et collaboratif de Gaston", 
    address: "14 avenue Edouard Vaillant, Pantin", 
    user_id: User.last.id
  )
# file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e')
# garden1.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
# file = URI.open('https://images.unsplash.com/photo-1474440692490-2e83ae13ba29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# garden1.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden1.save!

emilie = User.new(
  first_name: "Emilie", 
  last_name: Faker::Name.last_name, 
  email: "emilie@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, Bobigny"
)
# file = URI.open('https://images.unsplash.com/photo-1592520113018-180c8bc831c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
# emilie.avatar.attach(io: file, filename: "Emilie avatar.png", content_type: 'image/jpg')
emilie.save!

garden2 = Garden.new(
    name: "Emilie's shared garden",
    description: "Jardin alternatif bio et collaboratif de Emilie", 
    address: "4 Rue Henri Barbusse, Aubervilliers", 
    user_id: User.last.id
  )
# file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e')
# garden2.photos.attach(io: file, filename: "Emilie shared garden view.png", content_type: 'image/jpg')
# file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e')
# garden2.photos.attach(io: file, filename: "Emilie shared garden category.png", content_type: 'image/jpg')
garden2.save!

paul = User.new(
  first_name: "Paul", 
  last_name: Faker::Name.last_name, 
  email: "paul@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, Bobigny"
)
# file = URI.open('https://images.unsplash.com/photo-1582804905556-0605e6433015?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
# paul.avatar.attach(io: file, filename: "Paul avatar.png", content_type: 'image/jpg')
paul.save!

garden3 = Garden.new(
    name: "Parc municipal",
    description: "Jardins municipaux à fleurs", 
    address: " 4 Rue Claude Guinot, Saint-Ouen", 
    user_id: User.last.id
  )
# file = URI.open('https://images.unsplash.com/photo-1539287916498-2a4ce855d2c5')
# garden3.photos.attach(io: file, filename: "Paul municipal garden view.png", content_type: 'image/jpg')
# file = URI.open('https://images.unsplash.com/photo-1487530903081-59e0e3331512')
# garden3.photos.attach(io: file, filename: "Paul municipal garden category.png", content_type: 'image/jpg')
garden3.save!

puts "4 users created"
puts "3 gardens created"



# Garden.create!(
#   description: "Gaston's cité fertile", 
#   address: "14 avenue Edouard Vaillant, Pantin", 
#   user_id: 
# )
# Garden.create!(
#   description: "Emilie's shared garden", 
#   address: "4 Rue Henri Barbusse, Aubervilliers", 
#   user_id: 3
# )

# Garden.create!(
#   description: "Paul in Guinot garden", 
#   address: " 4 Rue Claude Guinot, Saint-Ouen", 
#   user_id: 3
# )

# puts "3 gardens created"


# bundle install + rails db:migrate + tocken cloudinary à ajouter dans le fichier .env (à créer à la racine)
# verifier que .env est caché dans le fichier .gitignore



