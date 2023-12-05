require "open-uri"

Event.destroy_all
User.destroy_all
Message.destroy_all

puts "Seeding users..."

user1 = User.create(first_name: "eduardo", last_name: "segantine", nickname: "dudu", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stefany", last_name: "santos", nickname: "ste", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipi", last_name: "freo", nickname: "lipe", email: "felipi@gmail.com", password: "123456" )

puts "Seeding events..."


event1 = Event.create(name: "Stroll in Ibirapuera Park", location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP, 04094-050", category: "Outdoors", event_date: "12/12/2023", period: "Morning", user_id: user1.id)
event2 = Event.create(name: "See the Memorial of Latin America", location: "Av. Mário de Andrade, 664 - Barra Funda, São Paulo - SP, 01156-001", category: "Visual Arts", event_date: "12/07/2023", period:  "Afternoon", user_id: user2.id)
event3 = Event.create(name: "Checkout Beco do Batman", location: "R. Medeiros de Albuquerque, 82-154 - Jardim das Bandeiras, São Paulo - SP, 05436-060", category: "Nightlife", event_date: "12/21/2023", period: "Night" , user_id: user3.id)
event4 = Event.create(name: "See the Museum of Futebol", location: "Praça Charles Miller, s/n - Pacaembu, São Paulo - SP, 01234-010",  category: "Visual Arts", event_date: "12/11/2023", period: "Morning", user_id: user1.id)
event5 = Event.create(name: "Checkout the Zoo of Sao Paulo", location: "Av. Miguel Estefno, 4241 - Água Funda, São Paulo - SP, 04301-905",  category: "Outdoors", event_date: "12/28/2023", period: "Afternoon", user_id: user2.id)
event6 = Event.create(name: "Watch a game at Allianz Park", location: "Avenida Francisco Matarazzo, 1705, R. Palestra Itália, 200 - Água Branca, São Paulo - SP, 05001-200",  category: "Sports", event_date: "12/11/2023", period: "Night" , user_id: user3.id)
event7 = Event.create(name: "Checkout Mercado Municipal de Sao Paulo", location: "R. da Cantareira, 306 - Centro Histórico de São Paulo, São Paulo - SP, 01024-900",  category: "Culinary", event_date: "12/20/2023", period: "Morning" , user_id: user1.id)
event8 = Event.create(name: "See the MASP Meseum", location: "Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200",  category: "Visual Arts", event_date: "12/29/2023", period: "Afternoon", user_id: user2.id)
event9 = Event.create(name: "See a show at the Municipal Theatre of Sao Paulo", location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP, 01037-010", category: "Visual Arts", event_date: "12/30/2023", period: "Night", user_id: user3.id)
event10 = Event.create(name: "See the Catedral da Se de Sao Paulo", location: "Praça da Sé - Sé, São Paulo - SP, 01001-000", category: "Cultural", event_date: "12/10/2023", period: "Morning", user_id: user1.id)

file1 = URI.open("https://img.freepik.com/fotos-premium/vista-aerea-do-parque-do-ibirapuera-em-sao-paulo-brasil-parque-com-area-verde-preservada_361869-826.jpg")
event1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
event1.save

file2 = URI.open("https://live.staticflickr.com/65535/40658807663_2d649cacc8_b.jpg")
event2.photo.attach(io: file2, filename: "1.png", content_type: "image/png")
event2.save

file3 = URI.open("https://mobilidadesampa.com.br/wp-content/uploads/2016/06/grafite3.jpg")
event3.photo.attach(io: file3, filename: "2.png", content_type: "image/png")
event3.save

file4 = URI.open("https://www.google.com/url?sa=i&url=https%3A%2F%2Fdirecaocultura.com.br%2Fprojetos%2Fmuseu-do-futebol%2F%3Ftp%3D1&psig=AOvVaw1FOFrRVHdWLcrb-YX2bS8S&ust=1701546997457000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJD9_9GC74IDFQAAAAAdAAAAABAE")
event4.photo.attach(io: file4, filename: "4.png", content_type: "image/png")
event4.save

file5 = URI.open("https://www.saopaulo.sp.gov.br/wp-content/uploads/2019/12/zoologico-sp.jpg")
event5.photo.attach(io: file5, filename: "5.png", content_type: "image/png")
event5.save

file6 = URI.open("https://mingroneiluminacao.com.br/wp-content/uploads/2017/11/LumePalmeiras090-1.jpg")
event6.photo.attach(io: file6, filename: "6.png", content_type: "image/png")
event6.save

file7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/de/Mercado_Municipal%2C_fachada_rua_da_Cantareira_2.JPG")
event7.photo.attach(io: file7, filename: "7.png", content_type: "image/png")
event7.save

file8 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/fe/64/8d/masp-en-la-avenida-paulista.jpg?w=1200&h=1200&s=1")
event8.photo.attach(io: file8, filename: "8.png", content_type: "image/png")
event8.save

file9 = URI.open("https://c1.wallpaperflare.com/preview/18/66/445/brazil-drama-photo-municipal-thumbnail.jpg")
event9.photo.attach(io: file9, filename: "9.png", content_type: "image/png")
event9.save

file10 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0oBWqRed1Bv_HNWq4679VAJMOtKtX4ERvw-b4QOx0EZ4FW3i7JViH8hqEsXBTtzdWC5U&usqp=CAU")
event10.photo.attach(io: file10, filename: "10.png", content_type: "image/png")
event10.save

#___________________________________________________________________________________________________________________________#

# Rio de Janeiro Events
event11 = Event.create(name: "Explore Christ the Redeemer", location: "Corcovado - Rio de Janeiro, RJ", category: "Sightseeing", event_date: "12/15/2023", period: "Morning", user_id: user1.id)
event12 = Event.create(name: "Visit Sugarloaf Mountain", location: "Praia Vermelha - Rio de Janeiro, RJ", category: "Sightseeing", event_date: "12/16/2023", period: "Afternoon", user_id: user2.id)
event13 = Event.create(name: "Enjoy Copacabana Beach", location: "Copacabana - Rio de Janeiro, RJ", category: "Outdoors", event_date: "12/18/2023", period: "Afternoon", user_id: user3.id)
event14 = Event.create(name: "Samba Night at Lapa Arches", location: "Arcos da Lapa - Rio de Janeiro, RJ", category: "Nightlife", event_date: "12/19/2023", period: "Night", user_id: user1.id)
event15 = Event.create(name: "Rio Carnival Parade", location: "Sambadrome Marquês de Sapucaí - Rio de Janeiro, RJ", category: "Cultural", event_date: "12/25/2023", period: "Night", user_id: user2.id)
event16 = Event.create(name: "Botanical Garden Tour", location: "Jardim Botânico - Rio de Janeiro, RJ", category: "Outdoors", event_date: "12/27/2023", period: "Morning", user_id: user3.id)
event17 = Event.create(name: "Hike to Pedra da Gávea", location: "Pedra da Gávea - Rio de Janeiro, RJ", category: "Outdoors", event_date: "12/29/2023", period: "Morning", user_id: user1.id)
event18 = Event.create(name: "Attend a Football Match at Maracanã", location: "Maracanã Stadium - Rio de Janeiro, RJ", category: "Sports", event_date: "12/30/2023", period: "Afternoon", user_id: user2.id)
event19 = Event.create(name: "Lunch at Confeitaria Colombo", location: "Rua Gonçalves Dias, 32 - Centro, Rio de Janeiro - RJ", category: "Culinary", event_date: "12/31/2023", period: "Afternoon", user_id: user3.id)
event20 = Event.create(name: "Discover Tijuca National Park", location: "Tijuca Forest - Rio de Janeiro, RJ", category: "Outdoors", event_date: "12/22/2023", period: "Morning", user_id: user1.id)

# New York Events
event21 = Event.create(name: "Explore Central Park", location: "Central Park - New York, NY", category: "Outdoors", event_date: "12/12/2023", period: "Morning", user_id: user1.id)
event22 = Event.create(name: "Visit the Statue of Liberty", location: "Liberty Island - New York, NY", category: "Sightseeing", event_date: "12/13/2023", period: "Afternoon", user_id: user2.id)
event23 = Event.create(name: "Broadway Show at Times Square", location: "Times Square - New York, NY", category: "Visual Arts", event_date: "12/14/2023", period: "Night", user_id: user3.id)
event24 = Event.create(name: "Explore The Metropolitan Museum of Art", location: "1000 5th Ave - New York, NY", category: "Cultural", event_date: "12/17/2023", period: "Morning", user_id: user1.id)
event25 = Event.create(name: "Walk the Brooklyn Bridge", location: "Brooklyn Bridge - New York, NY", category: "Sightseeing", event_date: "12/21/2023", period: "Afternoon", user_id: user2.id)
event26 = Event.create(name: "Central Park Zoo Visit", location: "Central Park - New York, NY", category: "Outdoors", event_date: "12/23/2023", period: "Afternoon", user_id: user3.id)
event27 = Event.create(name: "Empire State Building Observatory", location: "Empire State Building - New York, NY", category: "Sightseeing", event_date: "12/26/2023", period: "Night", user_id: user1.id)
event28 = Event.create(name: "Dine at Katz's Delicatessen", location: "205 E Houston St - New York, NY", category: "Culinary", event_date: "12/28/2023", period: "Night", user_id: user2.id)
event29 = Event.create(name: "Explore The High Line", location: "The High Line - New York, NY", category: "Outdoors", event_date: "12/29/2023", period: "Morning", user_id: user3.id)
event30 = Event.create(name: "Museum of Modern Art (MoMA)", location: "11 W 53rd St - New York, NY", category: "Visual Arts", event_date: "12/30/2023", period: "Afternoon", user_id: user1.id)

# Tokyo Events
event31 = Event.create(name: "Visit Meiji Shrine", location: "1-1 Yoyogikamizonochō, Shibuya City, Tokyo 151-8557, Japan", category: "Cultural", event_date: "12/12/2023", period: "Morning", user_id: user1.id)
event32 = Event.create(name: "Explore Tsukiji Outer Market", location: "4 Chome-16-2 Tsukiji, Chuo City, Tokyo 104-0045, Japan", category: "Culinary", event_date: "12/14/2023", period: "Afternoon", user_id: user2.id)
event33 = Event.create(name: "Sumida Aquarium Visit", location: "1 Chome-1-1 Shinsuna, Koto City, Tokyo 136-0082, Japan", category: "Outdoors", event_date: "12/15/2023", period: "Afternoon", user_id: user3.id)
event34 = Event.create(name: "Asakusa Temple and Nakamise Street", location: "2 Chome-3-1 Asakusa, Taito City, Tokyo 111-0032, Japan", category: "Cultural", event_date: "12/18/2023", period: "Night", user_id: user1.id)
event35 = Event.create(name: "Shinjuku Gyoen National Garden", location: "11 Naitomachi, Shinjuku City, Tokyo 160-0014, Japan", category: "Outdoors", event_date: "12/20/2023", period: "Morning", user_id: user2.id)
event36 = Event.create(name: "Explore Akihabara", location: "Sotokanda, Chiyoda City, Tokyo 101-0021, Japan", category: "Signseeing", event_date: "12/23/2023", period: "Afternoon", user_id: user3.id)
event37 = Event.create(name: "Digital Art Museum - teamLab Borderless", location: "1 Chome-3-8 Aomi, Koto City, Tokyo 135-0064, Japan", category: "Perfoming & Visual Arts", event_date: "12/26/2023", period: "Night", user_id: user1.id)
event38 = Event.create(name: "Tokyo Disneyland", location: "1-1 Maihama, Urayasu, Chiba 279-0031, Japan", category: "Outdoors", event_date: "12/28/2023", period: "Afternoon", user_id: user2.id)
event39 = Event.create(name: "Odaiba Seaside Park", location: "1 Chome-4 Daiba, Minato City, Tokyo 135-0091, Japan", category: "Outdoors", event_date: "12/29/2023", period: "Morning", user_id: user3.id)
event40 = Event.create(name: "Tokyo Skytree", location: "1 Chome-1-2 Oshiage, Sumida City, Tokyo 131-0045, Japan", category: "Sightseeing", event_date: "12/30/2023", period: "Afternoon", user_id: user1.id)
