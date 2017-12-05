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

  it "is valid without a publisher" do
    search = FactoryBot.create :search
    search.publisher = nil
    expect(search).to be_valid
  end

  it "is valid without a desenvolvedora" do
    search = FactoryBot.create :search
    search.desenvolvedora = nil
    expect(search).to be_valid
  end

  it "is not valid with max_rating greater than 10" do
    search = FactoryBot.create :search
    search.max_rating = 20
    expect(search).to_not be_valid
  end

  it "is not valid with max_rating lower than 0" do
    search = FactoryBot.create :search
    search.max_rating = -1
    expect(search).to_not be_valid
  end

  it "is not valid with min_rating greater than 10" do
    search = FactoryBot.create :search
    search.min_rating = 20
    expect(search).to_not be_valid
  end

  it "is valid with min_rating lower than 0" do
    search = FactoryBot.create :search
    search.min_rating = -1
    expect(search).to_not be_valid
  end

  it "is valid without a rating" do
    search = FactoryBot.create :search
    search.max_rating = nil
    search.min_rating = nil
    expect(search).to be_valid
  end

  it "should return valid search" do
    jogo = FactoryBot.create :jogo
    search = FactoryBot.create :search
    findJogo = search.search_jogos
    expect(findJogo).to eq([jogo])
  end

  it "should return an empty search" do
    search = FactoryBot.create :search
    findJogo = search.search_jogos
    expect(findJogo.count).to be 0
  end

  it "should return 3 games named Zelda ordered by name" do
    jogoZelda1 = FactoryBot.create :jogo
    jogoZelda2 = FactoryBot.create :jogo
    jogoZelda3 = FactoryBot.create :jogo

    search = FactoryBot.create :search
    findJogo = search.search_jogos
    expect(findJogo.count).to eq 3
 
    expect(findJogo[0].nome).to eq jogoZelda1.nome
    expect(findJogo[1].nome).to eq jogoZelda2.nome
    expect(findJogo[2].nome).to eq jogoZelda3.nome
  end

end
