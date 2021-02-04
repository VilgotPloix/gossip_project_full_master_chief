User.destroy_all
City.destroy_all
Gossip.destroy_all


puts "bonjour"
10.times do |index|
	cities = City.create(name: Faker::Address.city, zip: Faker::Address.zip_code)
end

10.times do |index|
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::ChuckNorris.fact, email: Faker::Internet.email, age:Faker::Number.number(digits: 2), city: City.all.sample)
end
puts "koukou"

20.times do |index|
goss = Gossip.create(title: Faker::Book.title, content: Faker::Quotes::Rajnikanth.joke, user: User.all.sample)
end

tag = Tag.create(name: Faker::Lorem.word)

tag = Tag_gossip.create(title: Tag.all.sample, gossip: Gossip.all.sample)