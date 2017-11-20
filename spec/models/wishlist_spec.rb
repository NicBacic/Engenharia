require 'rails_helper'

RSpec.describe Wishlist, type: :model do
  it "is valid with valid attributes" do
    wishlist = Wishlist.new(user_id:1)
    expect(wishlist).to be_valid
  end

  it "is not valid without a user_id" do
    wishlist = Wishlist.new(user_id: nil)
    expect(wishlist).to_not be_valid
  end
end
