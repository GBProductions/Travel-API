class AddReviewsCount < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :reviews_count, :integer 
  end
end
