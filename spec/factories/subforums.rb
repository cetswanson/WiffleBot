FactoryGirl.define do
  factory :subforum do
    title Faker::Name.title
    description Faker::Lorem.paragraph
  end
end