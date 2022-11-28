json.extract! product, :id, :Name, :Description, :Category_ID, :Price_ID, :Unity, :Discount_ID, :Stock_ID, :created_at, :updated_at
json.url product_url(product, format: :json)
