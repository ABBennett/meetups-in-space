require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

100.times do
  User.create(
    provider: "Gitbub",
    uid: Faker::Internet.password(8),
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    avatar_url: Faker::Avatar.image
  )
end

100.times do
  Meetup.create(
    name: "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}",
    details: Faker::Lorem.sentence,
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}",
    creator: Faker::Number.between(1, 100)
  )
end

1000.times do
  UserMeetup.
end
