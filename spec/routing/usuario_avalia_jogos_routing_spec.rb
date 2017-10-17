require "rails_helper"

RSpec.describe UsuarioAvaliaJogosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/usuario_avalia_jogos").to route_to("usuario_avalia_jogos#index")
    end

    it "routes to #new" do
      expect(:get => "/usuario_avalia_jogos/new").to route_to("usuario_avalia_jogos#new")
    end

    it "routes to #show" do
      expect(:get => "/usuario_avalia_jogos/1").to route_to("usuario_avalia_jogos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/usuario_avalia_jogos/1/edit").to route_to("usuario_avalia_jogos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/usuario_avalia_jogos").to route_to("usuario_avalia_jogos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/usuario_avalia_jogos/1").to route_to("usuario_avalia_jogos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/usuario_avalia_jogos/1").to route_to("usuario_avalia_jogos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/usuario_avalia_jogos/1").to route_to("usuario_avalia_jogos#destroy", :id => "1")
    end

  end
end
