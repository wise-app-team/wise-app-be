FactoryBot.define do
  factory :drug do |f|
    f.rxcui { Faker::Number.number(digits: 5) }
    f.name { Faker::Lorem.word }
    f.synonym { Faker::Lorem.word }
  end
end