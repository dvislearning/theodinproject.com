FactoryGirl.define do
  factory :user do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    password { Faker::Internet.password }
    email { Faker::Internet.email }
    sequence(:age) { |n| n }
    confirmed_at { Time.now }
  end
end
