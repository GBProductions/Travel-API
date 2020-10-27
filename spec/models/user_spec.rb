# require "rails_helper"

# RSpec.describe User, :type => :model do
  
#   before(:all) do
#     @user = create(:user)
#   end
  
#   it "is valid with valid attributes" do
#     expect(@user).to be_valid
#   end
  
#   it "has a unique username" do
#     user = build(:user, email: "bob@gmail.com")
#     expect(@user).to_not be_valid
#   end
  
#   it "has a unique email" do
#     user = build(:user, username: "Bob")
#     expect(@user).to_not be_valid
#   end
  
#   it "is not valid without a password" do 
#     user = build(:user, password: nil)
#     expect(@user).to_not be_valid
#   end
  
#   it "is not valid without a username" do 
#     user = build(:user, username: nil)
#     expect(@user).to_not be_valid
#   end
  
#   it "is not valid without an email" do
#     user = build(:user, email: nil)
#     expect(@user).to_not be_valid
#   end
# end