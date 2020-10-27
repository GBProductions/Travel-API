require "rails_helper"

RSpec.describe Review, :type => :model do
  
  before(:all) do
    @review = create(:review)
  end
  
  it "gets reviews by country " do
    expect(review.country).to eq("Italy")
  end
end