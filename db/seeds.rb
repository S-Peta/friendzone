require "open-uri"

Event.destroy_all
User.destroy_all
Message.destroy_all

puts "Seeding users..."

user1 = User.create(first_name: "eduardo", last_name: "segantine", nickname: "dudu", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stefany", last_name: "santos", nickname: "ste", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipi", last_name: "freo", nickname: "lipe", email: "felipi@gmail.com", password: "123456" )
user4 = User.create(first_name: "sam", last_name: "smith", nickname: "sam", email: "sam@gmail.com", password: "123456" )

puts "Seeding events..."

#Sao Paulo Events

# Event 1
event1 = Event.create(
  name: "Samba Night at Bar Brahma",
  location: "Av. São João, 677 - Centro, São Paulo - SP",
  category: "Nightlife",
  event_date: "12/12/2023",
  period: "Night",
  user_id: user1.id
)

# Event 2
event2 = Event.create(
  name: "Electro Dance Party at D-Edge",
  location: "Alameda Olga, 170 - Barra Funda, São Paulo - SP",
  category: "Nightlife",
  event_date: "12/21/2023",
  period: "Night",
  user_id: user3.id
)

# Event 3
event3 = Event.create(
  name: "Live Music at Bourbon Street Music Club",
  location: "R. dos Chanés, 127 - Moema, São Paulo - SP",
  category: "Nightlife",
  event_date: "12/30/2023",
  period: "Night",
  user_id: user3.id
)

# Event 4
event4 = Event.create(
  name: "Exhibition at Pinacoteca do Estado",
  location: "Praça da Luz, 2 - Luz, São Paulo - SP",
  category: "Visual Arts",
  event_date: "12/07/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 5
event5 = Event.create(
  name: "Street Art Tour in Vila Madalena",
  location: "Vila Madalena, São Paulo - SP",
  category: "Visual Arts",
  event_date: "12/11/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 6
event6 = Event.create(
  name: "Visit to MASP - Museu de Arte de São Paulo",
  location: "Av. Paulista, 1578 - Bela Vista, São Paulo - SP",
  category: "Visual Arts",
  event_date: "12/29/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 7
event7 = Event.create(
  name: "Football Match at Allianz Parque",
  location: "Av. Francisco Matarazzo, 1705 - Água Branca, São Paulo - SP",
  category: "Sports",
  event_date: "12/11/2023",
  period: "Night",
  user_id: user3.id
)

# Event 8
event8 = Event.create(
  name: "Tennis Tournament at Clube Paineiras do Morumby",
  location: "Av. Dr. Alberto Penteado, 605 - Morumbi, São Paulo - SP",
  category: "Sports",
  event_date: "12/15/2023",
  period: "Afternoon",
  user_id: user1.id
)

# Event 9
event9 = Event.create(
  name: "Running Marathon at Ibirapuera Park",
  location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP",
  category: "Sports",
  event_date: "12/25/2023",
  period: "Morning",
  user_id: user2.id
)

# Event 10
event10 = Event.create(
  name: "Food Tasting at Mercado Municipal de São Paulo",
  location: "R. da Cantareira, 306 - Centro Histórico de São Paulo, São Paulo - SP",
  category: "Culinary",
  event_date: "12/20/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 11
event11 = Event.create(
  name: "Gastronomic Tour in Liberdade",
  location: "Liberdade, São Paulo - SP",
  category: "Culinary",
  event_date: "12/23/2023",
  period: "Afternoon",
  user_id: user3.id
)

# Event 12
event12 = Event.create(
  name: "Dinner at Fogo de Chão",
  location: "Av. dos Bandeirantes, 538 - Vila Olímpia, São Paulo - SP",
  category: "Culinary",
  event_date: "12/27/2023",
  period: "Night",
  user_id: user2.id
)

# Event 13
event13 = Event.create(
  name: "Zoo Day at Parque Zoologico de São Paulo",
  location: "Av. Miguel Estefno, 4241 - Água Funda, São Paulo - SP",
  category: "Outdoors",
  event_date: "12/28/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 14
event14 = Event.create(
  name: "Hiking at Pico do Jaraguá",
  location: "Pico do Jaraguá, São Paulo - SP",
  category: "Outdoors",
  event_date: "12/30/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 15
event15 = Event.create(
  name: "Cycling in Parque Ibirapuera",
  location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP",
  category: "Outdoors",
  event_date: "12/31/2023",
  period: "Afternoon",
  user_id: user3.id
)

# Event 16
event16 = Event.create(
  name: "Theater Show at Theatro Municipal de São Paulo",
  location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP",
  category: "Cultural",
  event_date: "12/10/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 17
event17 = Event.create(
  name: "Cultural Fair at Praça da Sé",
  location: "Praça da Sé - Sé, São Paulo - SP",
  category: "Cultural",
  event_date: "12/14/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 18
event18 = Event.create(
  name: "Opera Night at Theatro Municipal de São Paulo",
  location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP",
  category: "Cultural",
  event_date: "12/18/2023",
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
  event_date: "12/12/2023",
  period: "Night",
  user_id: user1.id
)

# Event 20
event20 = Event.create(
  name: "Funky Party at Pedra do Sal",
  location: "Rua Argemiro Bulcão, 38 - Saúde, Rio de Janeiro - RJ",
  category: "Nightlife",
  event_date: "12/21/2023",
  period: "Night",
  user_id: user2.id
)

# Event 21
event21 = Event.create(
  name: "Live Music at Carioca da Gema",
  location: "Av. Mem de Sá, 79 - Centro, Rio de Janeiro - RJ",
  category: "Nightlife",
  event_date: "12/30/2023",
  period: "Night",
  user_id: user3.id
)

# Event 22
event22 = Event.create(
  name: "Art Gallery Tour in Santa Teresa",
  location: "Santa Teresa, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: "12/07/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 23
event23 = Event.create(
  name: "Visit to CCBB - Centro Cultural Banco do Brasil",
  location: "Rua Primeiro de Março, 66 - Centro, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: "12/11/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 24
event24 = Event.create(
  name: "Street Art Exploration in Lapa",
  location: "Lapa, Rio de Janeiro - RJ",
  category: "Visual Arts",
  event_date: "12/29/2023",
  period: "Afternoon",
  user_id: user3.id
)

# Event 25
event25 = Event.create(
  name: "Beach Volleyball at Copacabana",
  location: "Copacabana Beach, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: "12/11/2023",
  period: "Morning",
  user_id: user3.id
)

# Event 26
event26 = Event.create(
  name: "Surfing Day at Prainha",
  location: "Prainha, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: "12/15/2023",
  period: "Afternoon",
  user_id: user1.id
)

# Event 27
event27 = Event.create(
  name: "Soccer Match at Maracanã Stadium",
  location: "Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ",
  category: "Sports",
  event_date: "12/25/2023",
  period: "Night",
  user_id: user2.id
)

# Event 28
event28 = Event.create(
  name: "Feijoada Experience at Casa da Feijoada",
  location: "Rua Prudente de Morais, 10 - Ipanema, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: "12/20/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 29
event29 = Event.create(
  name: "Seafood Dinner at Garota de Ipanema",
  location: "Rua Vinícius de Moraes, 49 - Ipanema, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: "12/23/2023",
  period: "Afternoon",
  user_id: user3.id
)

# Event 30
event30 = Event.create(
  name: "Carioca Cuisine at Aprazível",
  location: "Rua Aprazível, 62 - Santa Teresa, Rio de Janeiro - RJ",
  category: "Culinary",
  event_date: "12/27/2023",
  period: "Night",
  user_id: user2.id
)

# Event 31
event31 = Event.create(
  name: "Sugarloaf Mountain Hike",
  location: "Praia Vermelha, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: "12/28/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 32
event32 = Event.create(
  name: "Hang Gliding at Pedra Bonita",
  location: "Estrada da Pedra Bonita, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: "12/30/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 33
event33 = Event.create(
  name: "Biking in Parque Lage",
  location: "Rua Jardim Botânico, 414 - Jardim Botânico, Rio de Janeiro - RJ",
  category: "Outdoors",
  event_date: "12/31/2023",
  period: "Afternoon",
  user_id: user3.id
)

# Event 34
event34 = Event.create(
  name: "Theater Play at Teatro Municipal do Rio de Janeiro",
  location: "Praça Floriano, S/N - Centro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: "12/10/2023",
  period: "Morning",
  user_id: user1.id
)

# Event 35
event35 = Event.create(
  name: "Rio Carnival Experience at Sambadrome",
  location: "Passarela do Samba Prof. Darcy Ribeiro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: "12/14/2023",
  period: "Afternoon",
  user_id: user2.id
)

# Event 36
event36 = Event.create(
  name: "Opera Night at Theatro Municipal do Rio de Janeiro",
  location: "Praça Floriano, S/N - Centro, Rio de Janeiro - RJ",
  category: "Cultural",
  event_date: "12/18/2023",
  period: "Night",
  user_id: user3.id
)


# Event 19
file19 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event19.photo.attach(io: file19, filename: "19.png", content_type: "image/png")
event19.save

# Event 20
file20 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event20.photo.attach(io: file20, filename: "20.png", content_type: "image/png")
event20.save

# Event 21
file21 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event21.photo.attach(io: file21, filename: "21.png", content_type: "image/png")
event21.save

# Event 22
file22 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event22.photo.attach(io: file22, filename: "22.png", content_type: "image/png")
event22.save

# Event 23
file23 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event23.photo.attach(io: file23, filename: "23.png", content_type: "image/png")
event23.save

# Event 24
file24 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event24.photo.attach(io: file24, filename: "24.png", content_type: "image/png")
event24.save

# Event 25
file25 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event25.photo.attach(io: file25, filename: "25.png", content_type: "image/png")
event25.save

# Event 26
file26 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event26.photo.attach(io: file26, filename: "26.png", content_type: "image/png")
event26.save

# Event 27
file27 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event27.photo.attach(io: file27, filename: "27.png", content_type: "image/png")
event27.save

# Event 28
file28 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event28.photo.attach(io: file28, filename: "28.png", content_type: "image/png")
event28.save

# Event 29
file29 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event29.photo.attach(io: file29, filename: "29.png", content_type: "image/png")
event29.save

# Event 30
file30 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event30.photo.attach(io: file30, filename: "30.png", content_type: "image/png")
event30.save

# Event 31
file31 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event31.photo.attach(io: file31, filename: "31.png", content_type: "image/png")
event31.save

# Event 32
file32 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event32.photo.attach(io: file32, filename: "32.png", content_type: "image/png")
event32.save

# Event 33
file33 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event33.photo.attach(io: file33, filename: "33.png", content_type: "image/png")
event33.save

# Event 34
file34 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event34.photo.attach(io: file34, filename: "34.png", content_type: "image/png")
event34.save

# Event 35
file35 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event35.photo.attach(io: file35, filename: "35.png", content_type: "image/png")
event35.save

# Event 36
file36 = URI.open("DIRECT_LINK_TO_IMAGE")  # Replace DIRECT_LINK_TO_IMAGE with the correct URL
event36.photo.attach(io: file36, filename: "36.png", content_type: "image/png")
event36.save
