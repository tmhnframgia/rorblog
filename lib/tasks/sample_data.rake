namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      avatar_url = "http://adogbreeds.com/wp-content/uploads/2013/01/Samoyed-2.jpg"
      User.create!(name: name,
                   email: email,
                   avatar_url: avatar_url,
                   password: password,
                   password_confirmation: password)
    end
  end
end