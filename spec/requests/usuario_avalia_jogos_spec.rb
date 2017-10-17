require 'rails_helper'

RSpec.describe "UsuarioAvaliaJogos", type: :request do
  describe "GET /usuario_avalia_jogos" do
    it "works! (now write some real specs)" do
      get usuario_avalia_jogos_path
      expect(response).to have_http_status(200)
    end
  end
end
