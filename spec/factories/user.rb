FactoryBot.define do
  factory :user do |f|
    f.name { Faker::Name.name }
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password }

    f.birthday { Faker::Date.birthday(min_age: 18, max_age: 65) }
    f.phone_number { Faker::PhoneNumber.phone_number }
    f.street_address { Faker::Address.street_address }
    f.city { Faker::Address.city }
    f.state { Faker::Address.state }
    f.zip_code { Faker::Address.zip_code }
  end
end