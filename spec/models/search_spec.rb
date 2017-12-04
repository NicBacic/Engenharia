require 'rails_helper'

RSpec.describe Search, type: :model do
  
  it "is valid with valid attributes" do
    expect(FactoryBot.create :search).to be_valid
  end

end
