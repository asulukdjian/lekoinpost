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
file = URI.open('https://images.unsplash.com/photo-1520423465871-0866049020b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80')
clara.avatar.attach(io: file, filename: "Clara avatar.png", content_type: 'image/jpg')
clara.save!

gaston = User.new(
  first_name: "Gaston", 
  last_name: Faker::Name.last_name, 
  email: "gaston@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "97, rue Lénine, Bagnolet"
)
file = URI.open('https://images.unsplash.com/photo-1529928874840-505e8bf2b2a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80')
gaston.avatar.attach(io: file, filename: "Gaston avatar.png", content_type: 'image/jpg')
gaston.save!


garden1 = Garden.new(
    name: "La cité fertile",
    description: "Friche urbaine remplie de verdure proposant des marchés de producteurs locaux, des sessions musicales, des grandes tablées dans la convivialité",
    address: "14 avenue Edouard Vaillant, Pantin",
    user_id: User.last.id
  )
file = URI.open('https://www.pariszigzag.fr/wp-content/uploads/2018/08/cite-fertle-recyclerie-paris-zigzag-scaled.jpg')
garden1.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1474440692490-2e83ae13ba29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
garden1.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden1.save!

emilie = User.new(
  first_name: "Emilie", 
  last_name: Faker::Name.last_name, 
  email: "emilie@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, Bobigny"
)
file = URI.open('https://images.unsplash.com/photo-1592520113018-180c8bc831c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
emilie.avatar.attach(io: file, filename: "Emilie avatar.png", content_type: 'image/jpg')
emilie.save!

garden2 = Garden.new(
    name: "Le jardin d'Emilie",
    description: "Jardin alternatif bio et collaboratif de quartier",
    address: "4 Rue Henri Barbusse, Aubervilliers",
    user_id: User.last.id
  )
file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e')
garden2.photos.attach(io: file, filename: "Emilie shared garden view.png", content_type: 'image/jpg')
file = URI.open('https://images.pexels.com/photos/9301/healthy-vegetables-restaurant-nature.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
garden2.photos.attach(io: file, filename: "Emilie shared garden category.png", content_type: 'image/jpg')
garden2.save!

paul = User.new(
  first_name: "Paul", 
  last_name: Faker::Name.last_name, 
  email: "paul@mail.fr", 
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, Bobigny"
)
file = URI.open('https://images.unsplash.com/photo-1582804905556-0605e6433015?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
paul.avatar.attach(io: file, filename: "Paul avatar.png", content_type: 'image/jpg')
paul.save!

garden3 = Garden.new(
    name: "Parc de la Butte du Chapeau Rouge",
    description: "Parc paysager en pente ouvert depuis 1938, fontaine majestueuse, pelouses, aire de jeux, tables de ping-pong.", 
    address: " 5 Avenue Debidour, 75019 Paris", 
    user_id: User.last.id
  )
file = URI.open('https://flic.kr/p/24VxGjn')
garden3.photos.attach(io: file, filename: "Paul municipal garden view.png", content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1487530903081-59e0e3331512')
garden3.photos.attach(io: file, filename: "Paul municipal garden category.png", content_type: 'image/jpg')
garden3.save!


garden4 = Garden.new(
    name: "La friche de Saint-Ouen",
    description: "Friche urbaine de quartier en construction", 
    address: " 4 Rue Claude Guinot, Saint-Ouen",
    user_id: User.last.id
  )
file = URI.open('https://s1.qwant.com/thumbr/0x380/0/5/a7513da1474388bcd6ef1d82e89f98c7ddf9686c8becf27134fab8d98ca1ed/image_5.png?u=https%3A%2F%2Fwww.anousparis.fr%2Fapp%2Fuploads%2F2017%2F09%2Fimage_5.png&q=0&b=1&p=0&a=1')
garden4.photos.attach(io: file, filename: "Paul municipal garden view.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/7/2/cd6f14ffa16cc90f5828cddb9d8d3ddb7eebadbb86a070fdd399244db7bf54/potato1.jpg?u=http%3A%2F%2Fwww.jardinerenville.fr%2Fwp-content%2Fuploads%2F2015%2F11%2Fpotato1.jpg&q=0&b=1&p=0&a=1')
garden4.photos.attach(io: file, filename: "Paul municipal garden category.png", content_type: 'image/jpg')
garden4.save!


garden5 = Garden.new(
    name: "Les jardins du Ruisseau",
    description: "La Ferme se compose de plusieurs espaces complémentaires et interdépendants : une prairie, un potager, un poulailler et 4 systèmes de compostage",
    address: "110 bis Rue du Ruisseau, 75018 Paris",
    user_id: User.last.id
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/6/0/73db9a2b2d5fe718a28b9ba751fc5b923c9e42c7c30591eb71c6a5c3ed51ff/paname-goodman_jardins-du-ruisseau_01.jpg?u=http%3A%2F%2Fwww.panamegoodman.fr%2Fwp-content%2Fuploads%2Fpaname-goodman_jardins-du-ruisseau_01.jpg&q=0&b=1&p=0&a=1')
garden5.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/f/9bff4dc82b85ed4f99290c43007b02c2900c9aa1c7a53a6644ceaaf8849f8c/jardins-du-ruisseau-88862.jpg?u=http%3A%2F%2Fwww.etpourtantelletourne.fr%2Fwp-content%2Fuploads%2Fsites%2F6%2F2014%2F10%2Fjardins-du-ruisseau-88862.jpg&q=0&b=1&p=0&a=1')
garden5.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden5.save!

garden6 = Garden.new(
    name: "Jardin21",
    description: "Le Jardin21 est un terrain de 1500m² niché au bord du canal avec un jardin à cultiver, un potager avec des arbres fruitiers, aromatiques et des légumes de saison.",
    address: "12/A Rue Ella Fitzgerald, 75019 Paris",
    user_id: User.last.id
  )
file = URI.open('https://www.sortiraparis.com/images/61/78960/363840-jardin-21-a-la-villette-14.jpg')
garden6.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://www.sortiraparis.com/images/61/78960/363798-jardin-21-a-la-villette-17.jpg')
garden6.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden6.save!

garden7 = Garden.new(
    name: "Les murs à pêches",
    description: "L'association des murs à pêches entretient 3 parcelles, un verger historique avec des pêchers palissées 'à la loque' contre les murs ainsi qu'un jardin médiéval, et acceuille également de nombreux évenements",
    address: "8 Impasse Gobetue, 93100 Montreuil",
    user_id: User.last.id
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/1/386b6d0beafc7fb586b8199737916ee7ea2e9729e25b418d38f3bd5c3a760b/115-dcomdrone-murs_a_peches-montreuil-10.jpg?u=https%3A%2F%2Fwww.hosiho.net%2Ffr%2Fimages%2F115-dcomdrone-murs_a_peches-montreuil-10.jpg%3Fresize%3D700-524&q=0&b=1&p=0&a=1')
garden7.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/2/5/5991abe55972561dbca3240dc7a90c22b1029d845d154a4a29f68fbfc4e932/murs-a-peches-6-couv-1024x800-50-50.jpg?u=http%3A%2F%2Fwww.revuesurmesure.fr%2Fthumbs%2Fissues%2Fnatures-urbaines-et-citoyennetes%2Fles-murs-a-peches-de-montreuil%2Fmurs-a-peches-6-couv-1024x800-50-50.jpg&q=0&b=1&p=0&a=1')
garden7.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden7.save!

garden8 = Garden.new(
    name: "Parc de Belleville",
    description: "Parc créé en 1988, avec aire de jeux, théâtre en plein air, vignoble et musée sur l'air de la ville.",
    address: "47 Rue des Couronnes, 75020 Paris",
    user_id: User.last.id
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/f/89eeeab9b9cb3a4789ec6ea7bdd01acd93edba354ab52c9e7448c0342f22a6/belleville_paris-2.jpg?u=https%3A%2F%2Fdwgfmnrdprofc.cloudfront.net%2Fwp-content%2Fuploads%2F2013%2F09%2Fbelleville_paris-2.jpg&q=0&b=1&p=0&a=1')
garden8.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x0/9/6/efffba8f93cdea2866e283f3db4c10fcb5b58d9615658cdf4edfe225d563dc/parc-de-belleville3.jpg?u=https%3A%2F%2Fwww.dans-ma-tribu.fr%2Fwp-content%2Fuploads%2F2010%2F12%2Fparc-de-belleville3.jpg&q=0&b=1&p=0&a=1')
garden8.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden8.save!

# to update

garden9 = Garden.new(
    name: "Les murs à pêches",
    description: "L'association des murs à pêches entretient 3 parcelles, un verger historique avec des pêchers palissées 'à la loque' contre les murs ainsi qu'un jardin médiéval, et acceuille également de nombreux évenements",
    address: "8 Impasse Gobetue, 93100 Montreuil",
    user_id: User.last.id
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/1/386b6d0beafc7fb586b8199737916ee7ea2e9729e25b418d38f3bd5c3a760b/115-dcomdrone-murs_a_peches-montreuil-10.jpg?u=https%3A%2F%2Fwww.hosiho.net%2Ffr%2Fimages%2F115-dcomdrone-murs_a_peches-montreuil-10.jpg%3Fresize%3D700-524&q=0&b=1&p=0&a=1')
garden9.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/2/5/5991abe55972561dbca3240dc7a90c22b1029d845d154a4a29f68fbfc4e932/murs-a-peches-6-couv-1024x800-50-50.jpg?u=http%3A%2F%2Fwww.revuesurmesure.fr%2Fthumbs%2Fissues%2Fnatures-urbaines-et-citoyennetes%2Fles-murs-a-peches-de-montreuil%2Fmurs-a-peches-6-couv-1024x800-50-50.jpg&q=0&b=1&p=0&a=1')
garden9.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden9.save!

garden10 = Garden.new(
    name: "Parc de Belleville",
    description: "Parc créé en 1988, avec aire de jeux, théâtre en plein air, vignoble et musée sur l'air de la ville.",
    address: "47 Rue des Couronnes, 75020 Paris",
    user_id: User.last.id
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/f/89eeeab9b9cb3a4789ec6ea7bdd01acd93edba354ab52c9e7448c0342f22a6/belleville_paris-2.jpg?u=https%3A%2F%2Fdwgfmnrdprofc.cloudfront.net%2Fwp-content%2Fuploads%2F2013%2F09%2Fbelleville_paris-2.jpg&q=0&b=1&p=0&a=1')
garden10.photos.attach(io: file, filename: "Gaston cite fertile view.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x0/9/6/efffba8f93cdea2866e283f3db4c10fcb5b58d9615658cdf4edfe225d563dc/parc-de-belleville3.jpg?u=https%3A%2F%2Fwww.dans-ma-tribu.fr%2Fwp-content%2Fuploads%2F2010%2F12%2Fparc-de-belleville3.jpg&q=0&b=1&p=0&a=1')
garden10.photos.attach(io: file, filename: "Gaston cite fertile category.png", content_type: 'image/jpg')
garden10.save!

puts "4 users created"
puts "10 gardens created"



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



