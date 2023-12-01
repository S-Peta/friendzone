Event.destroy_all
User.destroy_all
Message.destroy_all

puts "Seeding users..."

user1 = User.create(first_name: "eduardo", last_name: "segantine", nickname: "dudu", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stefany", last_name: "santos", nickname: "ste", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipi", last_name: "freo", nickname: "lipe", email: "felipi@gmail.com", password: "123456" )

puts "Seeding events..."


event1 = Event.create(name: "Stroll in Ibirapuera Park", location: "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP, 04094-050", category: "Outdoors", event_date: "12/12/2023", period: "Morning", user_id: user1.id)
event2 = Event.create(name: "See the Memorial of Latin America", location: "Av. Mário de Andrade, 664 - Barra Funda, São Paulo - SP, 01156-001",  category: "Historic",event_date: "12/07/2023", period:  "Afternoon", user_id: user2.id)
event3 = Event.create(name: "Checkout Beco do Batman", location: "R. Medeiros de Albuquerque, 82-154 - Jardim das Bandeiras, São Paulo - SP, 05436-060",  category: "Nightlife", event_date: "12/22/2023", period: "Night" , user_id: user3.id)
event4 = Event.create(name: "See the Museum of Futebol", location: "Praça Charles Miller, s/n - Pacaembu, São Paulo - SP, 01234-010",  category: "Perfoming & Visual Arts", event_date: "12/11/2023", period: "Morning", user_id: user1.id)
event5 = Event.create(name: "Checkout the Zoo of Sao Paulo", location: "Av. Miguel Estefno, 4241 - Água Funda, São Paulo - SP, 04301-905",  category: "Outdoors", event_date: "12/28/2023", period: "Afternoon", user_id: user2.id)
event6 = Event.create(name: "Watch a game at Allianz Park", location: "Avenida Francisco Matarazzo, 1705, R. Palestra Itália, 200 - Água Branca, São Paulo - SP, 05001-200",  category: "Sports", event_date: "12/11/2023", period: "Night" , user_id: user3.id)
event7 = Event.create(name: "Checkout Mercado Municipal de Sao Paulo", location: "R. da Cantareira, 306 - Centro Histórico de São Paulo, São Paulo - SP, 01024-900",  category: "Historic", event_date: "12/20/2023", period: "Morning" , user_id: user1.id)
event8 = Event.create(name: "See the MASP Meseum", location: "Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200",  category: "Perfoming & Visual Arts", event_date: "12/29/2023", period: "Afternoon", user_id: user2.id)
event9 = Event.create(name: "See a show at the Municipal Theatre of Sao Paulo", location: "Praça Ramos de Azevedo, s/n - República, São Paulo - SP, 01037-010", category: "Perfoming & Visual Arts", event_date: "12/30/2023", period: "Night", user_id: user3.id)
event10 = Event.create(name: "See the Catedral da Se de Sao Paulo", location: "Praça da Sé - Sé, São Paulo - SP, 01001-000", category: "Religious", event_date: "12/10/2023", period: "Morning", user_id: user1.id)


--------------------
