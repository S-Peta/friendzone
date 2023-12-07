require "open-uri"

Event.destroy_all
User.destroy_all
Message.destroy_all

puts "Seeding users..."

user1 = User.create(first_name: "eduardo", last_name: "segantine", nickname: "dudu", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stefany", last_name: "santos", nickname: "ste", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipi", last_name: "freo", nickname: "lipe", email: "felipi@gmail.com", password: "123456" )
user4 = User.create(first_name: "yan", last_name: "smith", nickname: "lau", email: "yan@gmail.com", password: "123456" )
user5 = User.create(first_name: "joca", last_name: "almeida", nickname: "joca", email: "joca@gmail.com", password: "123456" )
user6 = User.create(first_name: "everaldo", last_name: "nunes", nickname: "eve", email: "eve@gmail.com", password: "123456" )
user7 = User.create(first_name: "salatiel", last_name: "pereira", nickname: "sal", email: "sal@gmail.com", password: "123456" )
user8 = User.create(first_name: "maria", last_name: "olivia", nickname: "oli", email: "maria@gmail.com", password: "123456" )
user9 = User.create(first_name: "dalva", last_name: "coelho", nickname: "dalvinha", email: "dalva@gmail.com", password: "123456" )
user10 = User.create(first_name: "serena", last_name: "vasconcelos", nickname: "sereia", email: "serena@gmail.com", password: "123456" )

# User 1
file1 = URI.open("/Users/eduardosegantine/Downloads/dudu.jpg")
user1.photo.attach(io: user1, filename: "user1.png", content_type: "image/png")
user1.save

# User 2
file1 = URI.open("/Users/eduardosegantine/Downloads/ste.jpg")
user2.photo.attach(io: user2, name: "user2.png", content_type: "image/png")
user2.save

# User 3
file1 = URI.open("/Users/eduardosegantine/Downloads/lipe.jpg")
user3.photo.attach(io: user3, filename: "user3.png", content_type: "image/png")
user3.save

# User 4
file1 = URI.open("/Users/eduardosegantine/Downloads/lau.jpg")
user4.photo.attach(io: user4, filename: "user3.png", content_type: "image/png")
user4.save

puts "Seeding events..."

#Sao Paulo Events

# Event 1
event1 = Event.create(
  name: "Samba Night at Bar Brahma",
  location: "Av. São João, 677 - Centro, São Paulo - SP",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 10),
  period: "Night",
  user_id: user1.id
)

# Event 2
event2 = Event.create(
  name: "Electro Dance Party at D-Edge",
  location: "Alameda Olga, 170 - Barra Funda, São Paulo - SP",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 20),
  period: "Night",
  user_id: user3.id
)

# Event 3
event3 = Event.create(
  name: "Live Music at Bourbon Street Music Club",
  location: "R. dos Chanés, 127 - Moema, São Paulo - SP",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 30),
  period: "Night",
  user_id: user3.id
)

# Event 4
event4 = Event.create(
  name: "Exhibition at Pinacoteca do Estado",
  location: "Praça da Luz, 2 - Luz, São Paulo - SP",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 23),
  period: "Afternoon",
  user_id: user2.id
)

# Event 5
event5 = Event.create(
  name: "Street Art Tour in Vila Madalena",
  location: "Vila Madalena, São Paulo - SP",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 11),
  period: "Morning",
  user_id: user1.id
)

# Event 6
event6 = Event.create(
  name: "Visit to MASP - Museu de Arte de São Paulo",
  location: "Av. Paulista, 1578 - Bela Vista, São Paulo - SP",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 29),
  period: "Afternoon",
  user_id: user2.id
)

# Event 7
event7 = Event.create(
  name: "Football Match at Allianz Parque",
  location: "Av. Francisco Matarazzo, 1705 - Água Branca, São Paulo - SP",
  category: "Sports",
  event_date: Date.new(2023, 12, 11),
  period: "Night",
  user_id: user3.id
)

# Event 8
event8 = Event.create(
  name: "Tennis Tournament at Clube Paineiras do Morumby",
  location: "Av. Dr. Alberto Penteado, 605 - Morumbi, São Paulo - SP",
  category: "Sports",
  event_date: Date.new(2023, 12, 15),
  period: "Afternoon",
  user_id: user1.id
)

# Event 9
event9 = Event.create(
  name: "Running Marathon at Ibirapuera Park",
  location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP",
  category: "Sports",
  event_date: Date.new(2023, 12, 25),
  period: "Morning",
  user_id: user2.id
)

# Event 10
event10 = Event.create(
  name: "Food Tasting at Mercado Municipal de São Paulo",
  location: "R. da Cantareira, 306 - Centro Histórico de São Paulo, São Paulo - SP",
  category: "Culinary",
  event_date: Date.new(2023, 12, 20),
  period: "Morning",
  user_id: user1.id
)

# Event 11
event11 = Event.create(
  name: "Gastronomic Tour in Liberdade",
  location: "Liberdade, São Paulo - SP",
  category: "Culinary",
  event_date: Date.new(2023, 12, 23),
  period: "Afternoon",
  user_id: user3.id
)

# Event 12
event12 = Event.create(
  name: "Dinner at Fogo de Chão",
  location: "Av. dos Bandeirantes, 538 - Vila Olímpia, São Paulo - SP",
  category: "Culinary",
  event_date: Date.new(2023, 12, 27),
  period: "Night",
  user_id: user2.id
)

# Event 13
event13 = Event.create(
  name: "Zoo Day at Parque Zoologico de São Paulo",
  location: "Av. Miguel Estefno, 4241 - Água Funda, São Paulo - SP",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 28),
  period: "Afternoon",
  user_id: user2.id
)

# Event 14
event14 = Event.create(
  name: "Hiking at Pico do Jaraguá",
  location: "Pico do Jaraguá, São Paulo - SP",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 30),
  period: "Morning",
  user_id: user1.id
)

# Event 15
event15 = Event.create(
  name: "Cycling in Parque Ibirapuera",
  location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 31),
  period: "Afternoon",
  user_id: user3.id
)

# Event 16
event16 = Event.create(
  name: "Theater Show at Theatro Municipal de São Paulo",
  location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP",
  category: "Cultural",
  event_date: Date.new(2023, 7, 10),
  period: "Morning",
  user_id: user1.id
)

# Event 17
event17 = Event.create(
  name: "Cultural Fair at Praça da Sé",
  location: "Praça da Sé - Sé, São Paulo - SP",
  category: "Cultural",
  event_date: Date.new(2023, 12, 14),
  period: "Afternoon",
  user_id: user2.id
)

# Event 18
event18 = Event.create(
  name: "Opera Night at Theatro Municipal de São Paulo",
  location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP",
  category: "Cultural",
  event_date: Date.new(2023, 12, 18),
  period: "Night",
  user_id: user3.id
)


# Event 1
file1 = URI.open("https://images.unsplash.com/photo-1514786104681-194baea1ebf1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbWJhJTIwYmFyfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event1.photo.attach(io: file1, filename: "1.png", content_type: "image/png")
event1.save

# Event 2
file2 = URI.open("https://images.unsplash.com/photo-1622743941533-cde694bff56a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event2.photo.attach(io: file2, filename: "2.png", content_type: "image/png")
event2.save

# Event 3
file3 = URI.open("https://images.unsplash.com/photo-1633677290061-e1c7d9ae8538?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fE11c2ljJTIwQ2x1YnxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event3.photo.attach(io: file3, filename: "3.png", content_type: "image/png")
event3.save

# Event 4
file4 = URI.open("https://images.unsplash.com/photo-1580152785059-32e232dfeb53?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fFBpbmFjb3RlY2F8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event4.photo.attach(io: file4, filename: "4.png", content_type: "image/png")
event4.save

# Event 5
file5 = URI.open("https://images.unsplash.com/photo-1530406831759-15c5c0cbce8b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8U3RyZWV0JTIwQXJ0fGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event5.photo.attach(io: file5, filename: "5.png", content_type: "image/png")
event5.save

# Event 6
file6 = URI.open("https://images.unsplash.com/photo-1548618771-dfd3f73251b8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fG11c2V1bXxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event6.photo.attach(io: file6, filename: "6.png", content_type: "image/png")
event6.save

# Event 7
file7 = URI.open("https://images.unsplash.com/photo-1578256420811-3286f48ad70c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QWxsaWFueiUyMFBhcnF1ZXxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event7.photo.attach(io: file7, filename: "7.png", content_type: "image/png")
event7.save

# Event 8
file8 = URI.open("https://images.unsplash.com/photo-1583275478661-1c31970669fa?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHRlbm5pc3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event8.photo.attach(io: file8, filename: "8.png", content_type: "image/png")
event8.save

# Event 9
file9 = URI.open("https://images.unsplash.com/photo-1637507757291-0f36d80a7551?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fEliaXJhcHVlcmF8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event9.photo.attach(io: file9, filename: "9.png", content_type: "image/png")
event9.save

# Event 10
file10 = URI.open("https://images.unsplash.com/photo-1654508590127-6e7d889287b7?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8TWVyY2FkbyUyME11bmljaXBhbCUyMGRlJTIwUyVDMyVBM28lMjBQYXVsb3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event10.photo.attach(io: file10, filename: "10.png", content_type: "image/png")
event10.save

# Event 11
file11 = URI.open("https://images.unsplash.com/photo-1556557982-7824f168b1c1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8TGliZXJkYWRlfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event11.photo.attach(io: file11, filename: "11.png", content_type: "image/png")
event11.save

# Event 12
file12 = URI.open("https://images.unsplash.com/photo-1583549322669-af8248a306c1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2h1cnJhc2NvfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event12.photo.attach(io: file12, filename: "12.png", content_type: "image/png")
event12.save

# Event 13
file13 = URI.open("https://images.unsplash.com/photo-1553012781-b47b6751792c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHpvb3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event13.photo.attach(io: file13, filename: "13.png", content_type: "image/png")
event13.save

# Event 14
file14 = URI.open("https://images.unsplash.com/photo-1576594020807-17ec0dae95c8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGljbyUyMGRvJTIwSmFyYWd1JUMzJUExfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event14.photo.attach(io: file14, filename: "14.png", content_type: "image/png")
event14.save

# Event 15
file15 = URI.open("https://images.unsplash.com/photo-1696115777937-e66ebaea3d90?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q3ljbGluZyUyMHBhcmt8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event15.photo.attach(io: file15, filename: "15.png", content_type: "image/png")
event15.save

# Event 16
file16 = URI.open("https://images.unsplash.com/photo-1649369342313-e893bde4e228?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8VGhlYXRyb3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event16.photo.attach(io: file16, filename: "16.png", content_type: "image/png")
event16.save

# Event 17
file17 = URI.open("https://images.unsplash.com/photo-1586878939598-2070cfe9e65f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8UHJhJUMzJUE3YSUyMGRhJTIwUyVDMyVBOXxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event17.photo.attach(io: file17, filename: "17.png", content_type: "image/png")
event17.save

# Event 18
file18 = URI.open("https://images.unsplash.com/photo-1607998803461-4e9aef3be418?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8T3BlcmF8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event18.photo.attach(io: file18, filename: "18.png", content_type: "image/png")
event18.save


# Rio de Janeiro Events

# Event 19
event19 = Event.create(
  name: "Samba Night at Rio Scenarium",
  location: "Rua do Lavradio, 20 - Centro, Rio de Janeiro - RJ",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 12),
  period: "Night",
  user_id: user1.id
)

# Event 20
event20 = Event.create(
  name: "Funky Party at Pedra do Sal",
  location: "Rua Argemiro Bulcão, 38 - Saúde, Rio de Janeiro - RJ",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 21),
  period: "Night",
  user_id: user2.id
)

# Event 21
event21 = Event.create(
  name: "Live Music at Carioca da Gema",
  location: "Av. Mem de Sá, 79 - Centro, Rio de Janeiro - RJ",
  category: "Nightlife",
  event_date: Date.new(2023, 12, 30),
  period: "Night",
  user_id: user3.id
)

# Event 22
event22 = Event.create(
  name: "Art Gallery Tour in Santa Teresa",
  location: "Praça Floriano, 7 - Centro, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 13),
  period: "Afternoon",
  user_id: user2.id
)

# Event 23
event23 = Event.create(
  name: "Visit to CCBB - Centro Cultural Banco do Brasil",
  location: "Rua Primeiro de Março, 66 - Centro, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 11),
  period: "Morning",
  user_id: user1.id
)

# Event 24
event24 = Event.create(
  name: "Street Art Exploration in Lapa",
  location: "Lapa, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: Date.new(2023, 12, 29),
  period: "Afternoon",
  user_id: user3.id
)

# Event 25
event25 = Event.create(
  name: "Beach Volleyball at Copacabana",
  location: "Copacabana Beach, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: Date.new(2023, 12, 11),
  period: "Morning",
  user_id: user3.id
)

# Event 26
event26 = Event.create(
  name: "Surfing Day at Prainha",
  location: "Prainha, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: Date.new(2023, 12, 15),
  period: "Afternoon",
  user_id: user1.id
)

# Event 27
event27 = Event.create(
  name: "Soccer Match at Maracanã Stadium",
  location: "Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: Date.new(2023, 12, 25),
  period: "Night",
  user_id: user2.id
)

# Event 28
event28 = Event.create(
  name: "Feijoada Experience at Casa da Feijoada",
  location: "Rua Prudente de Morais, 10 - Ipanema, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: Date.new(2023, 12, 20),
  period: "Morning",
  user_id: user1.id
)

# Event 29
event29 = Event.create(
  name: "Seafood Dinner at Garota de Ipanema",
  location: "Rua Vinícius de Moraes, 49 - Ipanema, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: Date.new(2023, 12, 23),
  period: "Afternoon",
  user_id: user3.id
)

# Event 30
event30 = Event.create(
  name: "Carioca Cuisine at Aprazível",
  location: "Rua Aprazível, 62 - Santa Teresa, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: Date.new(2023, 12, 27),
  period: "Night",
  user_id: user2.id
)

# Event 31
event31 = Event.create(
  name: "Sugarloaf Mountain Hike",
  location: "Praia Vermelha, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 28),
  period: "Afternoon",
  user_id: user2.id
)

# Event 32
event32 = Event.create(
  name: "Hang Gliding at Pedra Bonita",
  location: "Estrada da Pedra Bonita, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 30),
  period: "Morning",
  user_id: user1.id
)

# Event 33
event33 = Event.create(
  name: "Biking in Parque Lage",
  location: "Rua Jardim Botânico, 414 - Jardim Botânico, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: Date.new(2023, 12, 31),
  period: "Afternoon",
  user_id: user3.id
)

# Event 34
event34 = Event.create(
  name: "Theater Play at Teatro Municipal do Rio de Janeiro",
  location: "Praça Floriano, S/N - Centro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: Date.new(2023, 12, 10),
  period: "Morning",
  user_id: user1.id
)

# Event 35
event35 = Event.create(
  name: "Rio Carnival Experience at Sambadrome",
  location: "Passarela do Samba Prof. Darcy Ribeiro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: Date.new(2023, 12, 14),
  period: "Afternoon",
  user_id: user2.id
)

# Event 36
event36 = Event.create(
  name: "Opera Night at Theatro Municipal do Rio de Janeiro",
  location: "Praça Floriano, S/N - Centro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: Date.new(2023, 12, 18),
  period: "Night",
  user_id: user3.id
)


# Event 19
file19 = URI.open("https://images.unsplash.com/photo-1563980337510-bfdd2649a4bc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2FtYmF8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event19.photo.attach(io: file19, filename: "19.png", content_type: "image/png")
event19.save

# Event 20
file20 = URI.open("https://images.unsplash.com/photo-1572148633314-0550e55cb6c4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHN0cmVldCUyMGJhcnxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event20.photo.attach(io: file20, filename: "20.png", content_type: "image/png")
event20.save

# Event 21
file21 = URI.open("https://images.unsplash.com/photo-1526749464606-83091e34a261?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGxpdmUlMjBtdXNpY3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event21.photo.attach(io: file21, filename: "21.png", content_type: "image/png")
event21.save

# Event 22
file22 = URI.open("https://images.unsplash.com/photo-1619226860903-e69df46e3e20?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2FudGElMjB0ZXJlc2ElMjByaW8lMjBkZSUyMGphbmVpcm98ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event22.photo.attach(io: file22, filename: "22.png", content_type: "image/png")
event22.save

# Event 23
file23 = URI.open("https://images.unsplash.com/photo-1665365465070-547bcdd5aa1b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Q0NCQnxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event23.photo.attach(io: file23, filename: "23.png", content_type: "image/png")
event23.save

# Event 24
file24 = URI.open("https://images.unsplash.com/photo-1693498171657-abc317e7c136?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGxhcGF8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event24.photo.attach(io: file24, filename: "24.png", content_type: "image/png")
event24.save

# Event 25
file25 = URI.open("https://images.unsplash.com/photo-1521138054413-5a47d349b7af?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dm9sbGV5YmFsbHxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event25.photo.attach(io: file25, filename: "25.png", content_type: "image/png")
event25.save

# Event 26
file26 = URI.open("https://images.unsplash.com/photo-1513737567531-bc431c8e5e85?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHN1cmYlMjBhcnBvYWRvcnxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event26.photo.attach(io: file26, filename: "26.png", content_type: "image/png")
event26.save

# Event 27
file27 = URI.open("https://c0.wallpaperflare.com/preview/929/352/977/football-brasil-brazil-rio-de-janiero.jpg")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event27.photo.attach(io: file27, filename: "27.png", content_type: "image/png")
event27.save

# Event 28
file28 = URI.open("https://c0.wallpaperflare.com/preview/725/541/270/brazil-state-of-rio-de-janeiro-baixa-gastronomia-food.jpg")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event28.photo.attach(io: file28, filename: "28.png", content_type: "image/png")
event28.save

# Event 29
file29 = URI.open("https://images.unsplash.com/photo-1579783411194-f697db862dcd?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U2VhZm9vZHxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event29.photo.attach(io: file29, filename: "29.png", content_type: "image/png")
event29.save

# Event 30
file30 = URI.open("https://images.unsplash.com/photo-1571167366136-b57e07761625?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fFNlYWZvb2R8ZW58MHx8MHx8fDI%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event30.photo.attach(io: file30, filename: "30.png", content_type: "image/png")
event30.save

# Event 31
file31 = URI.open("https://images.unsplash.com/photo-1627218369827-c6c7e2a71d80?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U3VnYXJsb2FmfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event31.photo.attach(io: file31, filename: "31.png", content_type: "image/png")
event31.save

# Event 32
file32 = URI.open("https://images.unsplash.com/photo-1656858131382-a83ed0d1a760?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fEhhbmclMjBHbGlkaW5nJTIwcmlvfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event32.photo.attach(io: file32, filename: "32.png", content_type: "image/png")
event32.save

# Event 33
file33 = URI.open("https://images.unsplash.com/photo-1660699944953-7fa97cd88ea0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8UGFycXVlJTIwTGFnZXxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event33.photo.attach(io: file33, filename: "33.png", content_type: "image/png")
event33.save

# Event 34
file34 = URI.open("https://images.unsplash.com/photo-1658700202493-b94659349fd8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGhlYXRlciUyMHJpb3xlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event34.photo.attach(io: file34, filename: "34.png", content_type: "image/png")
event34.save

# Event 35
file35 = URI.open("https://images.unsplash.com/photo-1680442302920-6b5703538aa0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fFNhbWJhfGVufDB8fDB8fHwy")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event35.photo.attach(io: file35, filename: "35.png", content_type: "image/png")
event35.save

# Event 36
file36 = URI.open("https://images.unsplash.com/photo-1665320136996-b66570e5f53a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTIwfHxPcGVyYXxlbnwwfHwwfHx8Mg%3D%3D")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event36.photo.attach(io: file36, filename: "36.png", content_type: "image/png")
event36.save
