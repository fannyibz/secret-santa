FactoryBot.define do
  factory :event do
    name {Faker::TvShows::Simpsons.location }
    max_amount {7}
    user
  end
end