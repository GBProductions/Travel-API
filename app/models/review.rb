class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :destination, counter_cache: true
  validates :user_id, :content, :destination_id, :presence => true 
  validates :rating, inclusion: { in: 1..5}
  

  
  scope :search_by_rating, -> (rating_parameter) {where(rating: "#{rating_parameter}")}

  scope :top_rated,  -> { order(rating: :desc).limit(100) }

  # scope :most_reviewed_city,  -> {(

end