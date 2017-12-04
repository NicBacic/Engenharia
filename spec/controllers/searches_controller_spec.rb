require 'rails_helper'
require 'coveralls'
Coveralls.wear!

RSpec.describe SearchesController, type: :controller do

let(:valid_attributes) {
    {
      nome: "The Legend of Zelda"
      console: "Switch"
      publisher: "Nintendo"
      desenvolvedora: "Nintendo EPD"
      min_rating: "0"
      max_rating: "9.99"  
    }
  }

  let(:invalid_attributes) {
    {
      nome: "*****",
      console: "*****",
      publisher:"??????",
      desenvolvedora:"??????",
      in_rating: "-2"
      max_rating: "-1"  
    }
  }

  
  let(:valid_session) { {} }

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      user = Search.create! valid_attributes
      get :show, params: {id: search.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

end
