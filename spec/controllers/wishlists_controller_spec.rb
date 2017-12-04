require 'rails_helper'
require 'factory_bot'
require 'coveralls'

RSpec.describe WishlistsController, type: :controller do

  scenario "Creating a wishlist for a user" do
    user = FactoryBot.create :user
    user.wishlist = Wishlist.new(user_id: user.id)
    
    visit user_wishlist_path(user,user.wishlist.id)

    expect(current_path).to eq user_wishlist_path(user,user.wishlist.id)

    expected_wishlist = Wishlist.last
    expect(expected_wishlist.user_id).to eq expected_wishlist.user_id

  end


end
