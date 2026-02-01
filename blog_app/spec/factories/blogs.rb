FactoryBot.define do
    factory :blog do
      title { Faker::Book.title }
      content { Faker::Lorem.paragraph }
      published { false }
    end
  end
  