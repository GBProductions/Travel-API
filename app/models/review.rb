class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :destination, counter_cache: true
  validates :user_id, :content, :destination_id, :presence => true 
  validates :rating, inclusion: { in: 1..5}
end