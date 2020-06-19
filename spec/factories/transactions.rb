FactoryBot.define do
  factory :transaction, class: Transaction do
    association :author_transaction, factory: :user
    festival
    festivales = %w[Hell&Heaven Coachella Ultra_EDM Wacken]
    description { 'Go to ' + festivales.sample + ' music festival' }
    amount { Faker::Number.decimal(l_digits: 2) }
  end
end
