User.create!(username:  "わん",
             email: "example@example.com",
             password:              "foobar",
             password_confirmation: "foobar"
             )

50.times do |n|
  username  = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(username:  username,
               email: email,
               password:              password,
               password_confirmation: password
               )

end