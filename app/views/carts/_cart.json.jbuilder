json.extract! cart, :id, :product_id, :quantity, :created_at, :updated_at, :user_id
json.url cart_url(cart, format: :json)
