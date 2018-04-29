User.create(name: "Hieu",
            email:"hieu@gmail.com",
            role: :admin,
            password: "12345678",
            password_confirmation: "12345678",
            activated: true,
avatar: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")

User.create(name: "Admin",
            email:"admin@gmail.com",
            role: :admin,
            password: "12345678",
            password_confirmation: "12345678",
            activated: true,
avatar: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png")


User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             avatar: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png",
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               avatar: "http://www.agentpipeline.com/wp-content/uploads/2015/10/Man-Avatar.png",
               activated: true,
               activated_at: Time.zone.now)
end

