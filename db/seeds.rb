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
nicknames = ["Bob", "Sally", "Tim", "Lizzie", "Linda", "Nirajan", "Frank", "Susie", "Roy", "Lucy",
             "John", "Oliver", "Stein", "Ferro", "Nero", "Chen", "Thomas", "Eleo", "Vitas",
             "Bach", "Jonny", "Silber", "Mark", "Michael", "Jack", "Johnny", "Fierro", "Ale", "Greg", "Robert", "Sam"]
images = ["https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1558287340-ac154cb1b31b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80",
          "https://images.unsplash.com/photo-1552162864-987ac51d1177?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1514501259756-f4b6fbeffa67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1595273185163-347066c49ad3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1592158169526-9deda479afce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=860&q=80",
          "https://images.unsplash.com/photo-1534330786040-317bdb76ccff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=917&q=80",
          "https://images.unsplash.com/photo-1584308972272-9e4e7685e80f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1596935884412-2caade8438a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=894&q=80",
          "https://images.unsplash.com/photo-1605087880595-8cc6db61f3c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1547212371-eb5e6a4b590c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1597004897768-c503466472cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1534126416832-a88fdf2911c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1532318065232-2ba7c6676cd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=923&q=80",
          "https://images.unsplash.com/photo-1526382925646-27b5eb86796e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1579503841516-e0bd7fca5faa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1536792414922-14b978901fcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1515175704145-8a06ffce6b77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=896&q=80",
          "https://images.unsplash.com/photo-1608153488161-803b502750fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1595897952944-878f3abafb5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1558216144-fef86b75da36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1562045726-c54c4d58b602?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1601234699404-4867fa71f87f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=865&q=80",
          "https://images.unsplash.com/photo-1585837146751-a44118595680?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=858&q=80",
          "https://images.unsplash.com/photo-1541576980233-97577392db9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=884&q=80",
          "https://images.unsplash.com/photo-1571988654190-ef2bfb6fb147?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1592334873219-42ca023e48ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=861&q=80",
          "https://images.unsplash.com/photo-1585042570881-d5c0cb418ed8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1534644586429-7681a71bc591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1509112756314-34a0badb29d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=931&q=80",
          "https://images.unsplash.com/photo-1513091550446-33297bfca05b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          "https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=881&q=80"
        ]

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
  file=URI.open(images[i])
  user.photo.attach(io:file, filename: "profile.png", content_type: "image/png")
  user.save!
  # puts "Creating user languages..."
  user_language = UserLanguage.new(language: Language.all.sample, user: user)
  user_language.save!
end

# puts "Creating chat requests and chat rooms..."

# USER = User.all

# size_of_slice = nicknames.size.div(2)
# asker = USER.each_slice(size_of_slice).to_a[0]
# receiver = USER.each_slice(size_of_slice).to_a[1]
# p asker.size
# p receiver.size

# for i in 0...size_of_slice do
#   puts "Generating chat request ##{i}"

#   chat_request = ChatRequest.new(asker: asker[i], receiver: receiver[i], status: 1)
#   chat_request.save!

#   puts "Generating chat room ##{i}"
#   chat_room = ChatRoom.new(name: "general", chat_request: chat_request)
#   chat_room.save!
# end

# chat_room = ChatRoom.new(name: "general", chat_request: chat_request)
#   chat_room.save!

puts "Creating events🎉🌹"

event_addresses = ["GPO: 4401, Thamel, Kathmandu", "Wildparkstraße 8,Frankfurt , Germany", "42 Place Stanislas, Nantes", "Bygmestervej 25, Denmark", "City Area - Haidian District, Beijing", "Lot 4707 Jln Seria, Belait, Kuala, Brunei", "Chong Kaosou Village,  Cambodia", "Jirón Santiago, Junin, Peru"]

event_titles = ["Dev barbecue", "Swimming", "Java dev gathering", "Fortnite game session", "Dev concert", "Nirajan TedTalk", "Bungee jumping", "Need to start a movement", "Exercise"]

time = ["19:00 UTC, 20:00pm UTC, 10:00 UTC", "9:00 UTC", "21:00 UTC", "5:00 CST", "16:00 CST", "22:00 CST"]

10.times do
  events = Event.new(
    title: event_titles.sample,
    theme: Faker::TvShows::BreakingBad.character,
    price: rand(100..500),
    description: Faker::TvShows::FamilyGuy.quote,
    date: Faker::Date.between(from: '2022-09-23', to: '2023-09-25'),
    time: time.sample,
    location: event_addresses.sample
  )

  events.save!
end
puts "Finished 🤦‍♀️"
