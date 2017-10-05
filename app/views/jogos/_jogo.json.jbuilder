json.extract! jogo, :id, :nome, :publisher, :desenvolvedora, :preco, :rating, :idadeRecomendada, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
