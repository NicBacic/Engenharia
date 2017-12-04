require 'rails_helper'

RSpec.describe Search, type: :model do
  
  it "is valid with valid attributes" do
    expect(FactoryBot.create :search).to be_valid
  end

  it "is valid without a console" do
    search = FactoryBot.create :search
    search.console = nil
    expect(search).to be_valid
  end

  it "is valid without a nome" do
    search = FactoryBot.create :search
    search.nome = nil
    expect(search).to be_valid
  end

end
