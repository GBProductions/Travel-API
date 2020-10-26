class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
    seed.generate_destinations
    seed.generate_users
    seed.destroy_seeds
  end

  def destroy_seeds
    User.destroy_all
    Destination.destroy_all
    Review.destroy_all
  end

  def generate_reviews
    20.times do |i|
      random_destination = Destination.all.sample
      random_user = User.all.sample
      review = random_user.reviews.create(
        destination_id: random_destination.id,
        content: Faker::Wizards.fact,
        rating: Faker::Number.between(1, 5)
      )
      puts "Review #{i}: Author is #{random_user.id}, Destination is #{review.destination_id}, and the content is '#{review.content}'."
    end
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
      country: Faker::Batmandu.location,
      city: Faker::Gotham.location,
      reviews_count: Faker::Number.between(1, 5)
      )
    end
  end

  def generate_users
    5.times do |i|
      user = User.create!(
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      )
    end
    User.create(
      email: 'batman@gmail.com', nickname: 'Robin', name: 'Penguin', password: 'poodle'
    )
  end
end

Seed.begin

p "You now have #{Destination.count} destinations in your db"
p "You now have #{Review.count} reviews in your db"
p "You now have #{User.count} users in your db"
