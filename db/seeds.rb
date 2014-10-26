2.times do
User.create(username: Faker::Commerce.color, password: "z", follow: true)
end
