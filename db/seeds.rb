User.destroy_all
Event.destroy_all

puts "Seeding users..."

user1 = User.create(first_name: "eduardo", last_name: "segantine", nickname: "dudu", email: "eduardo@gmail.com", password: "123456" )
user2 = User.create(first_name: "stephany", last_name: "santos", nickname: "ste", email: "ste@gmail.com", password: "123456" )
user3 = User.create(first_name: "felipi", last_name: "freo", nickname: "lipe", email: "felipi@gmail.com", password: "123456" )

puts "Seeding events..."


