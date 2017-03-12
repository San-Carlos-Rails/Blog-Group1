User.create!(name: "Example User",
  email: "example@group1.org",
  password:
  "group1",
  password_confirmation: "group1")
5.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@group1.org"
  password = "group1"
User.create!(name: name,
  email: email,
  password:
  password,
  password_confirmation: password)
end