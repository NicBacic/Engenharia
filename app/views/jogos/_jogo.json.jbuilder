json.extract! jogo, :id, :nome, :publisher, :desenvolvedora, :rating, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
