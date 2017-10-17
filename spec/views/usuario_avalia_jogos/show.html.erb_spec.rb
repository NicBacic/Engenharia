require 'rails_helper'

RSpec.describe "usuario_avalia_jogos/show", type: :view do
  before(:each) do
    @usuario_avalia_jogo = assign(:usuario_avalia_jogo, UsuarioAvaliaJogo.create!(
      :id_user => 2,
      :id_jogo => 3,
      :avaliacao => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
