FactoryBot.define do
  factory :user do
    fullname { Faker::Name.name }
    username { Faker::Internet.username(specifier: fullname, separators: %w(. _ -)) }
    email { Faker::Internet.email(name: fullname) }
  end
end
