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

# puts "Generating chat requests and chat rooms"
# users = User.all
# for i in 0...User.all.size do
#   users[i]
#   chat_request = ChatRequest.new(asker: asker[i], receiver: receiver[i], status: 1)
#   chat_request.save!
# end

puts "Creating events🎉🌹"

event_addresses = ["Rue de Vermont, Geneva", "Grange Canal, Geneva", "Rue du Rhone 4, Geneva", "Jardin Anglais, Geneva", "Chemin du Velours, Geneva"]



event_times = ["19:00 UTC, 20:00pm UTC, 10:00 UTC", "9:00 UTC", "21:00 UTC", "5:00 CST", "16:00 CST", "22:00 CST"]


Event.create!(
  title: "Nirajan Ted Talk",
  price: 0,
  description: "Nirajan is a professional JavaScript developer from Nepal with 15 years of experience. In this talk, he will teach JavaScript beginners how to get started with the language. Join him! It's free!",
  date: Faker::Date.between(from: '2022-09-23', to: '2022-10-25'),
  time: event_times.sample,
  location: event_addresses.sample,
  image: "https://pe.tedcdn.com/images/ted/21999050384c78a09ce1df4aba46b27f47cbd3c5_2880x1620.jpg"
)

Event.create!(
  title: "Dev Barbecue",
  price: 0,
  description: "Bring your own meat!! We will have a barbecue at my house and have some fun! Activities include: watching TV, Swimming, Dancing and of course programming talk",
  date: Faker::Date.between(from: '2022-09-23', to: '2022-10-25'),
  time: event_times.sample,
  location: event_addresses.sample,
  image: "https://images.aws.nestle.recipes/resized/6abb15854439a86d8da0b8d4f08c5306_Pork_Barbeque_Main_744_419.jpg"
)

Event.create!(
  title: "Hiking with developers",
  price: 0,
  description: "I want to socialize with more developers! What better way to do it than by hiking. We developers need to get some exercise so join me on the hike!",
  date: Faker::Date.between(from: '2022-09-23', to: '2022-10-25'),
  time: event_times.sample,
  location: event_addresses.sample,
  image: "https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlraW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
)

Event.create!(
  title: "Bungee jumping",
  price: 50,
  description: "As developers we stay indoors most of the time. Lets hike up this mountain to a bungee jumping spot and dive down! We need some adrenaline!",
  date: Faker::Date.between(from: '2022-09-23', to: '2022-10-25'),
  time: event_times.sample,
  location: event_addresses.sample,
  image: "https://i0.wp.com/www.interlakentravel.com/wp-content/uploads/2015/10/bungee-jumping-interlaken06.jpg?fit=1280%2C850&ssl=1"
)

Event.create!(
  title: "Coding tournament",
  price: 50,
  description: "Lets see who the best developer in town is! Join our coding tournament before seats are gone! Winner gets $1000 in cash prize and a Macbook Pro M2 latest edition full specs! ",
  date: Faker::Date.between(from: '2022-09-23', to: '2022-10-25'),
  time: event_times.sample,
  location: event_addresses.sample,
  image: "data:image/jpeg;base64,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"
)



puts "Finished 🤦‍♀️"
