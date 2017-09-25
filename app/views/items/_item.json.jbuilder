json.extract! item, :id, :nome, :descricao, :preco, :created_at, :updated_at
json.url item_url(item, format: :json)
