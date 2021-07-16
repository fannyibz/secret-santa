FactoryBot.define do
  factory :participant do
    first_name { Faker::TvShows::Simpsons.character }
    email { Faker::Internet.email }
    event
  end
end