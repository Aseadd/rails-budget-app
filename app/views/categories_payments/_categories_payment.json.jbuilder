json.extract! categories_payment, :id, :Categories, :references, :Payments_id, :created_at, :updated_at
json.url categories_payment_url(categories_payment, format: :json)
