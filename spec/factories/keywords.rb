FactoryBot.define do
  factory :keyword do
    word        {Faker::Name.initials}
    genre_id    {Faker::Number.between(from: 2, to: 11)}
    instruction {Faker::Lorem.sentences}
    association :user
  end
end
