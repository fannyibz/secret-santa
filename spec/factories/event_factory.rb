FactoryBot.define do
  factory :event do
    name {Faker::TvShows::Simpsons.location }
    max_amount {rand(4..20)}
    user
  end
end