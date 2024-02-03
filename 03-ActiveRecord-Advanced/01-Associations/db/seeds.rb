# TODO: Write a seed
require "faker"


5.times do
  CreateUsers.create(username: Faker::Internet.username)
end

CreateUsers.all.each do |user|
  rand(5..10).times do
    CreatePosts.create(title: Faker::Lorem.sentence, user: user)

  end

end
