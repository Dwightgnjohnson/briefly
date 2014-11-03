10.times do
  User.create(username: Faker::Commerce.color, password: "z")
end

20.times do
  Brief.create(user_id: rand(10), brief: Faker::Company.catch_phrase)
end


Friendship.create(user_id: 1, friend_id:5, followed_at:DateTime.now)
Friendship.create(user_id: 1, friend_id:7, followed_at:DateTime.now)
