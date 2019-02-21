FactoryBot.define do
  factory :user do
    name { Faker::Internet.email }
    password { '12345678' }
  end
end