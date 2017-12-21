json.extract! product, :id, :nome, :descricao, :imagem, :valor, :created_at, :updated_at
json.url product_url(product, format: :json)
