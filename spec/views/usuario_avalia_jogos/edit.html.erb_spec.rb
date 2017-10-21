require 'rails_helper'

RSpec.describe "usuario_avalia_jogos/edit", type: :view do
  before(:each) do
    @usuario_avalia_jogo = assign(:usuario_avalia_jogo, UsuarioAvaliaJogo.create!(
      :id_user => 1,
      :id_jogo => 1,
      :avaliacao => 1
    ))
  end

  it "renders the edit usuario_avalia_jogo form" do
    render

    assert_select "form[action=?][method=?]", usuario_avalia_jogo_path(@usuario_avalia_jogo), "post" do

      assert_select "input[name=?]", "usuario_avalia_jogo[id_user]"

      assert_select "input[name=?]", "usuario_avalia_jogo[id_jogo]"

      assert_select "input[name=?]", "usuario_avalia_jogo[avaliacao]"
    end
  end
end
