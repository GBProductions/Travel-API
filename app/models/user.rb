class User < ApplicationRecord
  belongs_to :review
  validates :user_id, :email, :password, :password_confirmation, :presence => true
end
