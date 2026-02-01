FactoryBot.define do
    factory :comment do
      body { Faker::Lorem.sentence }
      association :blog
    end
  end
  