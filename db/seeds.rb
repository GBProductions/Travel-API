class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
    # seed.generate_users

  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city,
        reviews_count: rand(1...5)
      )
      review = Review.create!(:rating => 5, :content => "poodles", :destination_id => destination.id, :user_id => 555)
    end
  end
  #   puts "Destination #{i}: Destination is #{destination.id}."
  # end
end  

#   def generate_users
#     5.times do |i|
#       user = User.create!(
#       email: Faker::Internet.email,
#       password: Faker::Internet.password,
#       )
#     end
#     User.create(
#       email: 'batman@gmail.com', nickname: 'Robin', name: 'Penguin', password: 'poodle'
#     )
#   end
# end

Seed.begin

# p "You now have #{Destination.count} destinations in your db"
# p "You now have #{Review.count} reviews in your db"
# p "You now have #{User.count} users in your db"
