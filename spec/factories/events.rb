FactoryBot.define do
  factory :event do
    name { Faker::DcComics.title }
    description { Faker::Lorem.paragraph }
    start_date { Time.now - 1.day }
    end_date { Time.now + 10.day }
    vacancies { 50 }
    value { 500 }
  end
end