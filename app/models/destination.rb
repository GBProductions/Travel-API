class Destination < ApplicationRecord
  has_many :reviews
  validates :country, :city, :reviews_count, :presence => true
  

  scope :featured, -> {
    order('reviews_count DESC')
  }

end
