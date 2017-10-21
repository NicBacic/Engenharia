require 'rails_helper'

RSpec.describe "usuario_avalia_jogos/index", type: :view do
  before(:each) do
    assign(:usuario_avalia_jogos, [
      UsuarioAvaliaJogo.create!(
        :id_user => 2,
        :id_jogo => 3,
        :avaliacao => 4
      ),
      UsuarioAvaliaJogo.create!(
        :id_user => 2,
        :id_jogo => 3,
        :avaliacao => 4
      )
    ])
  end

  it "renders a list of usuario_avalia_jogos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
