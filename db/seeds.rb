User.create!(name:  "vad",
             email: "vad-nes@yandex.ru",
             password:              "0112984",
             password_confirmation: "0112984",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end