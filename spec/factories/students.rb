FactoryBot.define do
  factory :student do
    name { "Hamilton Oliveira" }
    register  { "1234" }    
  end

  factory :student_2, class: Student do
    name { "Hamilton Oliveira" }
    register  { "1234" }    
  end

  factory :student_faker, class: Student do
    name { Faker::Name.name }
    register { Faker::Number.number(6) }
  end

end