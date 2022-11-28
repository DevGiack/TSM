json.extract! payment, :id, :User_ID, :Payment_type, :Status, :Amount, :Order_ID, :created_at, :updated_at
json.url payment_url(payment, format: :json)
