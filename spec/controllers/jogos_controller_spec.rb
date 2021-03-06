require 'rails_helper'
require 'coveralls'
Coveralls.wear!

RSpec.describe JogosController, type: :controller do

  let(:valid_attributes) {
    {
      nome:"The Legend of Zelda: Breath of the Wild",
      publisher:"Nintendo",
      desenvolvedora:"Nintendo EPD",
      console:"Switch",
      rating: "5"     
    }
  }

  let(:invalid_attributes) {
    {
      nome: "*****",
      publisher:"??????",
      desenvolvedora:"??????",
      rating:"ABC" 
    }
  }

  
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      jogo = Jogo.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      jogo = Jogo.create! valid_attributes
      get :show, params: {id: jogo.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      jogo = Jogo.create! valid_attributes
      get :edit, params: {id: jogo.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Jogo" do
        expect {
          post :create, params: {jogo: valid_attributes}, session: valid_session
        }.to change(Jogo, :count).by(1)
      end

      it "redirects to the created jogo" do
        post :create, params: {jogo: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Jogo.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {jogo: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          nome:"CS:GO",
          publisher:"Valve",
          desenvolvedora:"Valve",
          console:"PC",
          rating: "9"     
        }
      }

      #before(:each) do
        #put :update, :id => @jogo.id, :jogo => new_attributes
        #@jogo.reload
      #end

      it "updates the requested jogo" do
        jogo = Jogo.create! new_attributes
        put :update, params: {id: jogo.to_param, jogo: new_attributes}, session: valid_session
        jogo.reload
        expect(jogo.nome).to eql "CS:GO"
        expect(jogo.publisher).to eql "Valve"
        expect(jogo.desenvolvedora).to eql "Valve"
        expect(jogo.console).to eql "PC"
        #expect(@jogo.rating).to eql new_attributes[:rating]
      end

      it "redirects to the jogo" do
        jogo = Jogo.create! new_attributes
        put :update, params: {id: jogo.to_param, jogo: valid_attributes}, session: valid_session
        expect(response).to redirect_to(jogo)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        jogo = Jogo.create! valid_attributes
        put :update, params: {id: jogo.to_param, jogo: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested jogo" do
      jogo = Jogo.create! valid_attributes
      expect {
        delete :destroy, params: {id: jogo.to_param}, session: valid_session
      }.to change(Jogo, :count).by(-1)
    end

    it "redirects to the jogos list" do
      jogo = Jogo.create! valid_attributes
      delete :destroy, params: {id: jogo.to_param}, session: valid_session
      expect(response).to redirect_to(jogos_url)
    end
  end

end
