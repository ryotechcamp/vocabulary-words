FactoryBot.define do
  factory :test do
    association :user
    association :keyword
  end
end
