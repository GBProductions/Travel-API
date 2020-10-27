require "rails_helper"

RSpec.describe Destination, :type => :model do
  
  before(:all) do
    @destination = create(:destination)
   
  end
  
  it "shows rating of destination" do
    expect(destination.rating).to eq(5)
  end

  it "shows number of reviews for destination" do
    expect(destination.review).to eq(5)
  end
    
  it "shows most popular travel destinations by number of reviews" do
    expect(destination.rating).to eq(5)
  end

end

