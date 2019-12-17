User.create!(email: 'zizynonno@gmail.com', password: 'password', confirmed_at: Time.now)

Friend.create!(id: 1,
               user_id: 1)

99.times do |n|
  id         = n+2
  user_id    = 1
  Friend.create!(id: id,
            user_id: user_id)
end

s1 = Date.parse("1900/01/01")
s2 = Date.parse("2019/01/01")
ItemBasic.create!(id: 1,
           friend_id: 1,
                name: Faker::Name.name,
                 sex: rand(1..2),
            birthday: Random.rand(s1..s2),
                meet: Faker::Address.city,
                 tel: Faker::PhoneNumber.phone_number,
                 url: "https://chikitest.com/#{SecureRandom.hex(10)}",
             company: Faker::Company.name,
             address: Faker::Address.city,
          birthplace: Faker::Address.city,
             twitter: SecureRandom.urlsafe_base64(10),
            facebook: SecureRandom.urlsafe_base64(10),
           instagram: SecureRandom.urlsafe_base64(10),
                line: SecureRandom.urlsafe_base64(10),
            linkedin: SecureRandom.urlsafe_base64(10)
              )

99.times do |n|
  id           = n+2
  friend_id    = n+2
  ItemBasic.create!(id: id,
           friend_id: friend_id,
                name: Faker::Name.name,
                 sex: rand(1..2),
            birthday: Random.rand(s1..s2),
                meet: Faker::Address.city,
                 tel: Faker::PhoneNumber.phone_number,
                 url: "https://chikitest.com/#{SecureRandom.hex(10)}",
             company: Faker::Company.name,
             address: Faker::Address.city,
          birthplace: Faker::Address.city,
             twitter: SecureRandom.urlsafe_base64(10),
            facebook: SecureRandom.urlsafe_base64(10),
           instagram: SecureRandom.urlsafe_base64(10),
                line: SecureRandom.urlsafe_base64(10),
            linkedin: SecureRandom.urlsafe_base64(10)
              )
end


