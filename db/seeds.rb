# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "Deleting previous seeds..."
Language.destroy_all
User.destroy_all
UserLanguage.destroy_all

puts "Creating languages..."
languages = ['Java', 'Kotlin', 'Ruby', 'Javascript', 'Swift', 'Dart', 'CSS',
  'HTML', 'Bash', 'XML', 'C++', 'Rust', 'Pascal', 'Fortran', 'PHP',
  'Perl']

languages.each do |language|
  language = Language.new(name: language)
  language.save!
end

puts "Creating users..."
20.times do
  user = User.new(nickname: Faker::Beer.brand, email: Faker::Internet.email, password: "123456")
  user.save!
  # puts "Creating user languages..."
  user_language = UserLanguage.new(language: Language.all.sample, user: user)
  user_language.save!
end
USER = User.all
puts "Creating chat requests..."
asker = USER.split(10)[0]
reciever = USER.split(10)[1]
for e in 0...asker.size do
  chat_request = ChatRequest.new(asker: asker[e], reciever: reciever[e], accepted: true, pinned: false)
  chat_request.save!
end
