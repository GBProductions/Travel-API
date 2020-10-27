FactoryBot.define do
  factory(:destination) do
    country { wakanda }
    city { Faker::Lorem.characters(10) }
  end
end