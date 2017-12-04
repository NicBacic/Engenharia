require 'rails_helper'
require 'coveralls'
Coveralls.wear!

RSpec.describe SearchesController, type: :controller do

  let(:valid_attributes) {
    {
    nome: "The Legend of Zelda",
    console: "Switch",
    publisher: "Nintendo",
    desenvolvedora: "Nintendo EPD",
    min_rating: "0",
    max_rating: "10"   
    }
  }

  let(:invalid_attributes) {
    {
      nome: "*****",
      console:"??????",
      publisher:"??????",
      desenvolvedora: "??????",
      min_rating: "ABC",
      max_rating: "ABC"   
    }
  }

  
  let(:valid_session) { {} }

end
