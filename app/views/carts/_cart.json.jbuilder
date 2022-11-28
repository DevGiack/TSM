json.extract! cart, :id, :ID_product, :Quantity, :created_at, :updated_at
json.url cart_url(cart, format: :json)
