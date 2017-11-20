json.extract! jogo, :id, :nome, :publisher, :desenvolvedora, :console,:rating, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
