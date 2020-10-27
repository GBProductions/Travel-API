FactoryBot.define do
  factory(:review) do
    content { "cat" }
    rating { 5 }
    destination_id { 30 }
    user_id { 18 }
  end
end
