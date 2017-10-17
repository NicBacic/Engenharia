json.extract! usuario_avalia_jogo, :id, :id_user, :id_jogo, :avaliacao, :created_at, :updated_at
json.url usuario_avalia_jogo_url(usuario_avalia_jogo, format: :json)
