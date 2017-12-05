require 'test_helper'

class UsuarioAvaliaJogosTest < ActionDispatch::IntegrationTest

  # Called before every test method runs. Can be used
  # to set up fixture information.
  setup do
    @usuario_avalia_jogo = usuarioAvaliaJogos(any)
  end

  test "should show UsuarioAvaliaJogos" do
    get usuario_avalia_jogo_url(@usuario_avalia_jogo)
    assert_response :success
  end

  test "should get new" do
    get new_usuario_avalia_jogo_url(@usuario_avalia_jogo)
    assert_response :success
  end

  test "should create usuario_avalia_jogos" do
    assert_difference('usuarioAvaliaJogo.count') do
      post usuario_avalia_jogo_url(@usuario_avalia_jogo), params: { usuario_avalia_jogo: {user_id: "1", jogo_id: "1", avaliacao: "1"} }
    end
    assert_redirected_to jogo_url(@usuario_avalia_jogo.jogo)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end


end