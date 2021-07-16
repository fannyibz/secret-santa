FactoryBot.define do
  factory :event do
    name {Faker::TvShows::Simpsons.location }
    max_amount {5}
    user
  end
end