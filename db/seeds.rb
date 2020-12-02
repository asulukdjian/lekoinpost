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
  address: "44 rue Ordener, 75018 Paris"
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
  address: "97, rue Lénine, 93170 Bagnolet",

)
file = URI.open('https://images.unsplash.com/photo-1529928874840-505e8bf2b2a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80')
gaston.avatar.attach(io: file, filename: "Gaston avatar.png", content_type: 'image/jpg')
gaston.save!


garden1 = Garden.new(
    name: "La cité fertile",
    description: "Friche urbaine remplie de verdure proposant des marchés de producteurs locaux, des sessions musicales, des grandes tablées dans la convivialité",
    address: "14 avenue Edouard Vaillant, 93500 Pantin",
    user_id: User.last.id,
    reward_score: 23
  )
file = URI.open('https://www.pariszigzag.fr/wp-content/uploads/2018/08/cite-fertle-recyclerie-paris-zigzag-scaled.jpg')
garden1.photos.attach(io: file, filename: "La cite fertile view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/8/1/9eb5023e72c8dec89d4e19fb426576bff5fd8c33e9751532797de3aa1ba23a/Bandan-BAS_60181-1100x732-1100x732.jpg?u=http%3A%2F%2Fwww.eodd.fr%2Fwp-content%2Fuploads%2F2015%2F12%2FBandan-BAS_60181-1100x732-1100x732.jpg&q=0&b=1&p=0&a=1')
garden1.photos.attach(io: file, filename: "La cite fertile view2.png", content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1474440692490-2e83ae13ba29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
garden1.photos.attach(io: file, filename: "La cite fertile view3.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/d/5/3ca94fb5caabc72b612a5ed550a2c59a30149e215538f2e74c9253e65340d5/Copyright-Simon-Lemarchand.jpg?u=https%3A%2F%2Fwww.anousparis.fr%2Fapp%2Fuploads%2F2018%2F09%2FCopyright-Simon-Lemarchand.jpg&q=0&b=1&p=0&a=1')
garden1.photos.attach(io: file, filename: "La cite fertile view4.png", content_type: 'image/jpg')
garden1.save!

emilie = User.new(
  first_name: "Emilie",
  last_name: Faker::Name.last_name,
  email: "emilie@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, 93000 Bobigny"
)
file = URI.open('https://images.unsplash.com/photo-1592520113018-180c8bc831c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
emilie.avatar.attach(io: file, filename: "Emilie avatar.png", content_type: 'image/jpg')
emilie.save!

garden2 = Garden.new(
    name: "Le jardin d'Emilie",
    description: "Jardin alternatif bio et collaboratif de quartier",
    address: "4 Rue Henri Barbusse, 93300 Aubervilliers",
    user_id: User.last.id,
    reward_score: 17
  )
file = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e')
garden2.photos.attach(io: file, filename: "Le jardin d'Emilie view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/2/1/85d6c30259b4d506c35b82fa717090da8b148d5690c671883169bd02247f8f/panier-legumes-bio.jpg?u=https%3A%2F%2Fwww.giraumon.fr%2Fwp-content%2Fuploads%2F2015%2F02%2Fpanier-legumes-bio.jpg&q=0&b=1&p=0&a=1')
garden2.photos.attach(io: file, filename: "Le jardin d'Emilie view2.png", content_type: 'image/jpg')
file = URI.open('https://images.pexels.com/photos/9301/healthy-vegetables-restaurant-nature.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
garden2.photos.attach(io: file, filename: "Le jardin d'Emilie view3.png", content_type: 'image/jpg')
garden2.save!

paul = User.new(
  first_name: "Paul",
  last_name: Faker::Name.last_name,
  email: "paul@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "71 Rue Henri Langlois, 93000 Bobigny"
)
file = URI.open('https://images.unsplash.com/photo-1582804905556-0605e6433015?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
paul.avatar.attach(io: file, filename: "Paul avatar.png", content_type: 'image/jpg')
paul.save!

garden3 = Garden.new(
    name: "Parc de la Butte du Chapeau Rouge",
    description: "Parc paysager en pente ouvert depuis 1938, fontaine majestueuse, pelouses, aire de jeux, tables de ping-pong.",
    address: " 5 Avenue Debidour, 75019 Paris",
    user_id: User.last.id,
    reward_score: 33
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/5/c/0a1620525d7d719ddd9556b700787d9d6edd0499a35254f357d4c1a5d78b94/Parc-Butte-du-Chapeau-Rouge.jpg?u=https%3A%2F%2Fwww.unjourdeplusaparis.com%2Fwp-content%2Fuploads%2F2016%2F07%2FParc-Butte-du-Chapeau-Rouge.jpg&q=0&b=1&p=0&a=1')
garden3.photos.attach(io: file, filename: "Parc de la Butte du Chapeau Rouge view1.png", content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1487530903081-59e0e3331512')
garden3.photos.attach(io: file, filename: "Parc de la Butte du Chapeau Rouge view2.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/4/f/1e68133c09179df2dd64589ff1d427e8ab7d1ae214fcf8e18148de8e161ea8/Scene-Bios_Copyright-Biosphoto-NouN-e1487926031440.jpg?u=https%3A%2F%2Fwww.promessedefleurs.com%2Fblogwp%2Fwp-content%2Fuploads%2F2017%2F02%2FScene-Bios_Copyright-Biosphoto-NouN-e1487926031440.jpg&q=0&b=1&p=0&a=1')
garden3.photos.attach(io: file, filename: "Parc de la Butte du Chapeau Rouge view3.png", content_type: 'image/jpg')
garden3.save!

jose = User.new(
  first_name: "Jose",
  last_name: Faker::Name.last_name,
  email: "jose@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "18 Rue Claude Guinot, 93400 Saint-Ouen"
)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Jose_Bove_Europe_Ecologie_2009-06-03.jpg/800px-Jose_Bove_Europe_Ecologie_2009-06-03.jpg')
jose.avatar.attach(io: file, filename: "Jose avatar.png", content_type: 'image/jpg')
jose.save!

garden4 = Garden.new(
    name: "La friche de Saint-Ouen",
    description: "Friche urbaine de quartier en construction",
    address: " 4 Rue Claude Guinot, 93400 Saint-Ouen",
    user_id: User.last.id,
    reward_score: 32
  )
file = URI.open('https://s1.qwant.com/thumbr/0x380/0/5/a7513da1474388bcd6ef1d82e89f98c7ddf9686c8becf27134fab8d98ca1ed/image_5.png?u=https%3A%2F%2Fwww.anousparis.fr%2Fapp%2Fuploads%2F2017%2F09%2Fimage_5.png&q=0&b=1&p=0&a=1')
garden4.photos.attach(io: file, filename: "La friche de Saint-Ouen view1.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/7/2/cd6f14ffa16cc90f5828cddb9d8d3ddb7eebadbb86a070fdd399244db7bf54/potato1.jpg?u=http%3A%2F%2Fwww.jardinerenville.fr%2Fwp-content%2Fuploads%2F2015%2F11%2Fpotato1.jpg&q=0&b=1&p=0&a=1')
garden4.photos.attach(io: file, filename: "La friche de Saint-Ouen view2.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/b/9/2eb1ccccc224c37c1be8b76389e88c96cce68753a63f14ebb8860c4f8bbdcf/20160831_115500.jpg?u=https%3A%2F%2Fwww.auxilia-conseil.com%2Fsites%2Fdefault%2Ffiles%2F2017-09%2F20160831_115500.jpg&q=0&b=1&p=0&a=1')
garden4.photos.attach(io: file, filename: "La friche de Saint-Ouen view3.png", content_type: 'image/jpg')
garden4.save!

romain = User.new(
  first_name: "Romain",
  last_name: Faker::Name.last_name,
  email: "romain@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "12 bis Rue du Ruisseau, 75018 Paris"
)
file = URI.open('https://s1.qwant.com/thumbr/0x380/0/1/3d3a23cb13dad55d6965bb41a458d1b3f837aa472c1c6bcb7db78b93aa4d56/diaporamaphoto-street-style-rock-en-seine-11.jpg?u=http%3A%2F%2Fi.f1g.fr%2Fmedia%2Fext%2F1900x1900%2Fmadame.lefigaro.fr%2Fsites%2Fdefault%2Ffiles%2Fimg%2F2013%2F08%2Fdiaporamaphoto-street-style-rock-en-seine-11.jpg&q=0&b=1&p=0&a=1')
romain.avatar.attach(io: file, filename: "Romain avatar.png", content_type: 'image/jpg')
romain.save!

garden5 = Garden.new(
    name: "Les jardins du Ruisseau",
    description: "La Ferme se compose de plusieurs espaces complémentaires et interdépendants : une prairie, un potager, un poulailler et 4 systèmes de compostage",
    address: "110 bis Rue du Ruisseau, 75018 Paris",
    user_id: User.last.id,
    reward_score: 16
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/6/0/73db9a2b2d5fe718a28b9ba751fc5b923c9e42c7c30591eb71c6a5c3ed51ff/paname-goodman_jardins-du-ruisseau_01.jpg?u=http%3A%2F%2Fwww.panamegoodman.fr%2Fwp-content%2Fuploads%2Fpaname-goodman_jardins-du-ruisseau_01.jpg&q=0&b=1&p=0&a=1')
garden5.photos.attach(io: file, filename: "Les jardins du Ruisseau view1.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/f/9bff4dc82b85ed4f99290c43007b02c2900c9aa1c7a53a6644ceaaf8849f8c/jardins-du-ruisseau-88862.jpg?u=http%3A%2F%2Fwww.etpourtantelletourne.fr%2Fwp-content%2Fuploads%2Fsites%2F6%2F2014%2F10%2Fjardins-du-ruisseau-88862.jpg&q=0&b=1&p=0&a=1')
garden5.photos.attach(io: file, filename: "Les jardins du Ruisseau view2.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/d/5/d629e33a2ed85cf108be09150505470623c1d886ff3f63889e52a64eef0d26/Paniers-l%C3%A9gumes-20160615.jpg?u=http%3A%2F%2Fwww.midicueillette.fr%2Fwp-content%2Fuploads%2F2016%2F06%2FPaniers-l%25C3%25A9gumes-20160615.jpg&q=0&b=1&p=0&a=1')
garden5.photos.attach(io: file, filename: "Les jardins du Ruisseau view3.png", content_type: 'image/jpg')
garden5.save!

helena = User.new(
  first_name: "Helena",
  last_name: Faker::Name.last_name,
  email: "helena@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "2 Rue Ella Fitzgerald, 75019 Paris"
)
file = URI.open('https://s2.qwant.com/thumbr/0x380/5/b/a973bde249fc0f7c52c1dfa980c2792a2088ab946694e4dcab9902a9523b60/article-2311343-195E69E3000005DC-506_634x615.jpg?u=https%3A%2F%2Fi.dailymail.co.uk%2Fi%2Fpix%2F2013%2F04%2F18%2Farticle-2311343-195E69E3000005DC-506_634x615.jpg&q=0&b=1&p=0&a=1')
helena.avatar.attach(io: file, filename: "Helena avatar.png", content_type: 'image/jpg')
helena.save!

garden6 = Garden.new(
    name: "Jardin21",
    description: "Le Jardin21 est un terrain de 1500m² niché au bord du canal avec un jardin à cultiver, un potager avec des arbres fruitiers, aromatiques et des légumes de saison.",
    address: "12/A Rue Ella Fitzgerald, 75019 Paris",
    user_id: User.last.id,
    reward_score: 19
  )
file = URI.open('https://s1.qwant.com/thumbr/0x380/8/7/0f3590108d37ddba87d831e81839e5b18551a14e64de867185c4ec74789ab3/1.jpg?u=https%3A%2F%2Fwww.les48h.fr%2Fapp%2Fuploads%2Fevents%2F22168%2F1.jpg&q=0&b=1&p=0&a=1')
garden6.photos.attach(io: file, filename: "Jardin21 view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/b/f/cc9851adedf75d673cc36b498811fb18ea1d41ebd9587fc8ff11d26b0cea8c/61660846_712511022501888_7193619378082938880_n-810x541.jpg?u=https%3A%2F%2Finfos-75.com%2Finfos75%2Fwp-content%2Fuploads%2F2019%2F06%2F61660846_712511022501888_7193619378082938880_n-810x541.jpg&q=0&b=1&p=0&a=1')
garden6.photos.attach(io: file, filename: "Jardin21 view2.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x0/a/3/137968edb3c598404efb3cc5a8771d23a556012e4c03195d1c437b7094083a/L%C3%A9gumes-1-370x247.jpg?u=http%3A%2F%2Fkoon-restaurant.com%2Fwp-content%2Fuploads%2F2019%2F09%2FL%25C3%25A9gumes-1-370x247.jpg&q=0&b=1&p=0&a=1')
garden6.photos.attach(io: file, filename: "Jardin21 view3.png", content_type: 'image/jpg')
garden6.save!

gayane = User.new(
  first_name: "Gayane",
  last_name: Faker::Name.last_name,
  email: "gayane@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "12 Rue Saint-Just, 93100 Montreuil"
)
file = URI.open('https://s2.qwant.com/thumbr/0x380/6/e/17bcb14098f2af45bf1f873edd70605cb03fd144ef5054945a22182b38a174/cool-mothers-day-gift-gardening-clothing.jpg?u=https%3A%2F%2Fmovietvtechgeeks.com%2Fwp-content%2Fuploads%2F2018%2F05%2Fcool-mothers-day-gift-gardening-clothing.jpg&q=0&b=1&p=0&a=1')
gayane.avatar.attach(io: file, filename: "Gayane avatar.png", content_type: 'image/jpg')
gayane.save!

garden7 = Garden.new(
    name: "Les murs à pêches",
    description: "L'association des murs à pêches entretient 3 parcelles, un verger historique avec des pêchers palissées 'à la loque' contre les murs ainsi qu'un jardin médiéval, et acceuille également de nombreux évenements",
    address: "8 Impasse Gobetue, 93100 Montreuil",
    user_id: User.last.id,
    reward_score: 35
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/1/386b6d0beafc7fb586b8199737916ee7ea2e9729e25b418d38f3bd5c3a760b/115-dcomdrone-murs_a_peches-montreuil-10.jpg?u=https%3A%2F%2Fwww.hosiho.net%2Ffr%2Fimages%2F115-dcomdrone-murs_a_peches-montreuil-10.jpg%3Fresize%3D700-524&q=0&b=1&p=0&a=1')
garden7.photos.attach(io: file, filename: "Les murs à pêches view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/2/5/5991abe55972561dbca3240dc7a90c22b1029d845d154a4a29f68fbfc4e932/murs-a-peches-6-couv-1024x800-50-50.jpg?u=http%3A%2F%2Fwww.revuesurmesure.fr%2Fthumbs%2Fissues%2Fnatures-urbaines-et-citoyennetes%2Fles-murs-a-peches-de-montreuil%2Fmurs-a-peches-6-couv-1024x800-50-50.jpg&q=0&b=1&p=0&a=1')
garden7.photos.attach(io: file, filename: "Les murs à pêches view2.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/a/c/5a3c687491caa47e1918a1eaee0224db8af8fe1d127c762ff155f8197eb122/ps182-web-2-page-43-image-0001.jpg_720_1000_2.jpg?u=https%3A%2F%2Fwww.plantes-et-sante.fr%2Fimages%2Fps182-web-2-page-43-image-0001.jpg_720_1000_2&q=0&b=1&p=0&a=1')
garden7.photos.attach(io: file, filename: "Les murs à pêches view3.png", content_type: 'image/jpg')
garden7.save!

vanessa = User.new(
  first_name: "Vanessa",
  last_name: Faker::Name.last_name,
  email: "vanessa@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "12 Rue des Couronnes, 75020 Paris"
)
file = URI.open('https://s2.qwant.com/thumbr/0x380/c/8/2e96d7046be5ebb89f0331b147555bd1d400f7c1899593114474438357caef/800px_COLOURBOX1525210.jpg?u=https%3A%2F%2Fd2gg9evh47fn9z.cloudfront.net%2F800px_COLOURBOX1525210.jpg&q=0&b=1&p=0&a=1')
vanessa.avatar.attach(io: file, filename: "Vanessa avatar.png", content_type: 'image/jpg')
vanessa.save!

garden8 = Garden.new(
    name: "Parc de Belleville",
    description: "Parc créé en 1988, avec aire de jeux, théâtre en plein air, vignoble et musée sur l'air de la ville.",
    address: "47 Rue des Couronnes, 75020 Paris",
    user_id: User.last.id,
    reward_score: 38
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/f/f/89eeeab9b9cb3a4789ec6ea7bdd01acd93edba354ab52c9e7448c0342f22a6/belleville_paris-2.jpg?u=https%3A%2F%2Fdwgfmnrdprofc.cloudfront.net%2Fwp-content%2Fuploads%2F2013%2F09%2Fbelleville_paris-2.jpg&q=0&b=1&p=0&a=1')
garden8.photos.attach(io: file, filename: "Parc de Belleville view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x0/9/6/efffba8f93cdea2866e283f3db4c10fcb5b58d9615658cdf4edfe225d563dc/parc-de-belleville3.jpg?u=https%3A%2F%2Fwww.dans-ma-tribu.fr%2Fwp-content%2Fuploads%2F2010%2F12%2Fparc-de-belleville3.jpg&q=0&b=1&p=0&a=1')
garden8.photos.attach(io: file, filename: "Parc de Belleville view2.png", content_type: 'image/jpg')
file = URI.open('https://s2.qwant.com/thumbr/0x380/c/a/17a82831ee3594334390c1676280624160f887639d733f8c823c874b804743/1200px-Parc_de_Belleville_Paris_01.jpg?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F16%2FParc_de_Belleville_Paris_01.jpg%2F1200px-Parc_de_Belleville_Paris_01.jpg&q=0&b=1&p=0&a=1')
garden8.photos.attach(io: file, filename: "Parc de Belleville view3.png", content_type: 'image/jpg')
garden8.save!


estelle = User.new(
  first_name: "Estelle",
  last_name: Faker::Name.last_name,
  email: "estelle@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "15 Rue de l'Épine Prolongée, 93100 Montreuil"
)
file = URI.open('https://s1.qwant.com/thumbr/0x380/2/e/1fa54ecb224821c6e86aff367ebecb44fccf604dc30471a959137363d3339f/joli-femme-asiatique-%C3%A0-arrosoire-banque-dimage__k81993890.jpg?u=https%3A%2F%2Ffscomps.fotosearch.com%2Fcompc%2FCSP%2FCSP283%2Fjoli-femme-asiatique-%25C3%25A0-arrosoire-banque-dimage__k81993890.jpg&q=0&b=1&p=0&a=1')
estelle.avatar.attach(io: file, filename: "Estelle avatar.png", content_type: 'image/jpg')
estelle.save!

garden9 = Garden.new(
    name: "Parc départemental Jean-Moulin",
    description: "Parc populaire avec terrain de football, jardin éducatif, étang, sentiers pavés, plantations et autres.",
    address: "Rue de l'Épine Prolongée, 93100 Montreuil",
    user_id: User.last.id,
    reward_score: 17
  )
file = URI.open('https://s1.qwant.com/thumbr/700x0/b/9/3d38412f01992ebb9ee13c5a31fa4641da8ad61e2094852e69d736afe35f94/arton15534.jpg?u=https%3A%2F%2Fseinesaintdenis.fr%2FIMG%2Farton15534.jpg%3F1592389163&q=0&b=1&p=0&a=1')
garden9.photos.attach(io: file, filename: "Parc départemental Jean-Moulin view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/1/6/385a6013918dd5d4241856c061085d8d1c2b5565c0bc93694df4b511b41f44/Parc_d%C3%A9partemental_Jean-Moulin_les_Guilands_%40_Bagnolet_%40_Paris_(31408780416).jpg?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F5%2F5a%2FParc_d%25C3%25A9partemental_Jean-Moulin_les_Guilands_%2540_Bagnolet_%2540_Paris_%2831408780416%29.jpg&q=0&b=1&p=0&a=1')
garden9.photos.attach(io: file, filename: "Parc départemental Jean-Moulin view2.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/1/6/fad2ee7931af8eb33d4dd2d875c1e9c5ed82c0283d1385457f2a8e394886f3/IMG_4615.JPG?u=http%3A%2F%2F4.bp.blogspot.com%2F-T2TgWpt3jXw%2FT5fZAu55oMI%2FAAAAAAAAAag%2FosNlLcDtb14%2Fs1600%2FIMG_4615.JPG&q=0&b=1&p=0&a=1')
garden9.photos.attach(io: file, filename: "Parc départemental Jean-Moulin view3.png", content_type: 'image/jpg')
garden9.save!

killian = User.new(
  first_name: "Killian",
  last_name: Faker::Name.last_name,
  email: "killian@mail.fr",
  password: "123456",
  password_confirmation: "123456",
  address: "23 Rue de la Grange aux Belles, 75010 Paris"
)
file = URI.open('https://s1.qwant.com/thumbr/0x380/a/9/3756245f3c62ba31f80dadacdd3f82bf3bf5ebe4adc4b0132de03126eb630e/heureux-jeune-homme-noir-souriant-exterieur_33839-2399.jpg?u=https%3A%2F%2Fimage.freepik.com%2Fphotos-gratuite%2Fheureux-jeune-homme-noir-souriant-exterieur_33839-2399.jpg&q=0&b=1&p=0&a=1')
killian.avatar.attach(io: file, filename: "Killian avatar.png", content_type: 'image/jpg')
killian.save!

garden10 = Garden.new(
    name: "Jardin Villemin",
    description: "Parc avec aire de jeux pour enfants, jardin potager communautaire, terrains de sport, kiosque à musique et pelouses",
    address: "14 Rue des Récollets, 75010 Paris",
    user_id: User.last.id,
    reward_score: 28
  )
file = URI.open('https://s2.qwant.com/thumbr/0x380/c/4/cb0456a104dc6eb53ac1acc6f197f47bea0afe408b67e320fba1192eb0fffe/coach-sportif-jardin-villemin-ban-min.jpg?u=https%3A%2F%2Fwww.justcoaching.fr%2Fwp-content%2Fuploads%2F2019%2F10%2Fcoach-sportif-jardin-villemin-ban-min.jpg&q=0&b=1&p=0&a=1')
garden10.photos.attach(io: file, filename: "Jardin Villemin view1.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x0/a/d/a4a354657c83479f5454709463e55f79660ffd06ccba9119d8392fea8cafd6/1jard_villem6.jpg?u=http%3A%2F%2Fparis1900.lartnouveau.com%2Fparis10%2Fjardins%2Fjardin_villemin%2F1jard_villem6.jpg&q=0&b=1&p=0&a=1')
garden10.photos.attach(io: file, filename: "Jardin Villemin view2.png", content_type: 'image/jpg')
file = URI.open('https://s1.qwant.com/thumbr/0x380/3/f/6b14d4d95dc47ed13602d7c53f311a6e1f6d781c75c66dd5c16caf21e54d0c/69ab206c0754381415c58ec79c3901e6.jpg?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F69%2Fab%2F20%2F69ab206c0754381415c58ec79c3901e6.jpg&q=0&b=1&p=0&a=1')
garden10.photos.attach(io: file, filename: "Jardin Villemin view3.png", content_type: 'image/jpg')
garden10.save!

puts "10 users created"
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



