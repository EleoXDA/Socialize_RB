# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
# puts "Deleting previous seeds..."
UserLanguage.destroy_all
Language.destroy_all
puts "Language destroyed!!!💋"
ChatRoom.destroy_all
puts "Chatroom destroyed!🍞"
ChatRequest.destroy_all
User.destroy_all
puts "Users destroyed!🤼"

Event.destroy_all
puts "Events destroyed!!!!!!!🌆"

locations = ["Kathmandu", "Frankfurt", "Paris", "Bristol", "Caleta Tortel", "Windhoek", "Kyiv", "Madrid", "Mumbai",
             "San Francisco", "Nairobi", "Melbourne", "Rio de Janeiro", "Jakarta", "Invercargill","Norilsk"]
languages = ['Java', 'Kotlin', 'Ruby', 'Javascript', 'Swift', 'Dart', 'CSS','HTML', 'Bash', 'XML','C++', 'Rust',
             'Pascal', 'Fortran', 'PHP', 'Perl', "Python", "SQL", "NoSQL", "C#", "C", "Go", "Carbon", ]
nicknames = ["Bob", "Sally", "Ben", "Elbay", "Elena", "Nirajan", "Frank", "Susie", "Roy", "Lucy",
             "John", "Oliver", "Stein", "Ferro", "Nero", "Chen", "Thomas", "Eleo", "Vitas",
             "Bach", "Jonny", "Silber", "Mark", "Michael", "Jack", "Johnny", "Fierro", "Ale"]
images = ["https://gravatar.com/avatar/38e6bc27f9d54cca67426924eb366a51?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/649d7427af905218ac3e3fc2c2e6c2d4?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/f00a238b97348910aeb3a18ac7920301?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/07b5a65d00de168c8d8e4e1f8044b129?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/01e150e9db07023122c524d0e58addea?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/70f155619cdd9f45ea23f3039940ef0d?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/e0399004b9c37b2c35525ad34c119620?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/dc0d182da3d2c3ee00549396b264e60b?s=200&d=robohash&r=x",
          "https://gravatar.com/avatar/18b00cafdca2767b9afb62b368110b7a?s=200&d=robohash&r=x"]

puts "Creating languages... 😘"

languages.each do |language|
  language = Language.new(name: language)
  language.save!
end

puts "Creating users...🙈🙌👍👍"

for i in 0...nicknames.size do
  user = User.new(nickname: nicknames[i],
                  email: Faker::Internet.email,
                  password: "123456",
                  location: locations.sample)
  file=URI.open(images.sample)
  user.photo.attach(io:file, filename: "profile.png", content_type: "image/png")
  user.save!
  # puts "Creating user languages..."
  user_language = UserLanguage.new(language: Language.all.sample, user: user)
  user_language.save!
end

# puts "Creating chat requests and chat rooms..."

USER = User.all

size_of_slice = nicknames.size.div(2)
asker = USER.each_slice(size_of_slice).to_a[0]
receiver = USER.each_slice(size_of_slice).to_a[1]
p asker.size
p receiver.size

for i in 0...size_of_slice do
  puts "Generating chat request ##{i}"

  chat_request = ChatRequest.new(asker: asker[i], receiver: receiver[i], status: 1)
  chat_request.save!

  puts "Generating chat room ##{i}"
  chat_room = ChatRoom.new(name: "general", chat_request: chat_request)
  chat_room.save!
end

chat_room = ChatRoom.new(name: "general", chat_request: chat_request)
  chat_room.save!

puts "Creating events🎉🌹"

event_addresses = ["GPO: 4401, Thamel, Kathmandu", "Wildparkstraße 8, 14548 Frankfurt am Main, Germany", "42 Place Stanislas, Nantes, France", "Bygmestervej 25,  København V, Denmark", "Lian Hua Chi Xi Lu 28hao Yi Ceng Guo Jia Ce Hui Ju Shou Li Xu Ke Da Ting, City Area - Haidian District, Beijing", "Lot 4707 Jln Seria, Belait, Belait, Kuala, Brunei", "Chong Kaosou Village, Sangkat Slor Kram, Siem Reap City,  Cambodia", "Jirón Santiago Norero N° 200, El Tambo, Junin, Peru"]

event_titles = ["Dev barbecue", "Swimming", "Java dev gathering", "Fortnite game session", "Dev concert", "Nirajan TedTalk", "Bungee jumping", "Need to start a movement", "Exercise"]

10.times do
  events = Event.new(
    title: event_titles.sample,
    theme: Faker::TvShows::BreakingBad.character,
    price: rand(100..500),
    description: Faker::TvShows::FamilyGuy.quote,
    date: Faker::Date.between(from: '2022-09-23', to: '2023-09-25'),
    time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
    location: event_addresses.sample
  )

  events.save!
end
puts "Finished 🤦‍♀️"
