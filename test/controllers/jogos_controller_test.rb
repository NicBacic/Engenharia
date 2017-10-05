require 'test_helper'

class JogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jogo = jogos(:one)
  end

  test "should get index" do
    get jogos_url
    assert_response :success
  end

  test "should get new" do
    get new_jogo_url
    assert_response :success
  end

  test "should create jogo" do
    assert_difference('Jogo.count') do
      post jogos_url, params: { jogo: { desenvolvedora: @jogo.desenvolvedora, idadeRecomendada: @jogo.idadeRecomendada, nome: @jogo.nome, preco: @jogo.preco, publisher: @jogo.publisher, rating: @jogo.rating } }
    end

    assert_redirected_to jogo_url(Jogo.last)
  end

  test "should show jogo" do
    get jogo_url(@jogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_jogo_url(@jogo)
    assert_response :success
  end

  test "should update jogo" do
    patch jogo_url(@jogo), params: { jogo: { desenvolvedora: @jogo.desenvolvedora, idadeRecomendada: @jogo.idadeRecomendada, nome: @jogo.nome, preco: @jogo.preco, publisher: @jogo.publisher, rating: @jogo.rating } }
    assert_redirected_to jogo_url(@jogo)
  end

  test "should destroy jogo" do
    assert_difference('Jogo.count', -1) do
      delete jogo_url(@jogo)
    end

    assert_redirected_to jogos_url
  end
end
