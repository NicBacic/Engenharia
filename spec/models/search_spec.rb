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

  it "is valid with max_rating greater than 10" do
    search = FactoryBot.create :search
    search.max_rating = 20
    expect(search).to be_valid
  end

  it "is valid with max_rating lower than 0" do
    search = FactoryBot.create :search
    search.max_rating = -1
    expect(search).to be_valid
  end

  it "is valid with min_rating greater than 10" do
    search = FactoryBot.create :search
    search.min_rating = 20
    expect(search).to be_valid
  end

  it "is valid with min_rating lower than 0" do
    search = FactoryBot.create :search
    search.min_rating = -1
    expect(search).to be_valid
  end

  it "is valid without a rating" do
    search = FactoryBot.create :search
    search.max_rating = nil
    search.min_rating = nil
    expect(search).to be_valid
  end

  

end
