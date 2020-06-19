FactoryBot.define do
  factory :festival, class: Festival do
    association :fest_creator, factory: :user
    festivales = %w[Hell&Heaven Coachella Ultra_EDM Wacken]
    name { festivales.sample + ' music festival' }
    budget { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    imageok { File.new(Rails.root.join('app', 'assets', 'images', 'coachella.jpg')) }
  end
end
