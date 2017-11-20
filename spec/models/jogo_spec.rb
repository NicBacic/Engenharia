require 'rails_helper'

RSpec.describe Jogo, type: :model do

  it "is valid with valid attributes" do
    expect(FactoryBot.create :jogo).to be_valid
  end

  it "is valid without a console" do
    jogo = FactoryBot.create :jogo
    jogo.console = nil
    expect(jogo).to be_valid
  end

  it "is not valid without a nome" do
    jogo = FactoryBot.create :jogo
    jogo.nome = nil
    expect(jogo).to_not be_valid
  end

  it "is not valid with rating greater than 10" do
    jogo = FactoryBot.create :jogo
    jogo.rating = 20
    expect(jogo).to_not be_valid
  end

  it "is not valid without a desenvolvedora" do
    jogo = FactoryBot.create :jogo
    jogo.desenvolvedora = nil
    expect(jogo).to_not be_valid
  end

  it "is not valid without a publisher" do
    jogo = FactoryBot.create :jogo
    jogo.publisher = nil
    expect(jogo).to_not be_valid
  end

  it "is not valid with rating lower than 0" do
    jogo = FactoryBot.create :jogo
    jogo.rating = -1
    expect(jogo).to_not be_valid
  end

  it "is valid without a rating" do
    jogo = FactoryBot.create :jogo
    jogo.rating = nil
    expect(jogo).to be_valid
  end

  it "should return valid game" do
    jogo = FactoryBot.create :jogo
    findJogo = Jogo.search(jogo.nome)
    expect(findJogo).to eq([jogo])
  end

    it "should return valid game" do
    jogo = FactoryBot.create :jogo
    findJogo = Jogo.search("????")
    expect(findJogo).to_not eq([jogo])
  end

end
