json.extract! groceries_item, :id, :name, :availability, :price, :created_at, :updated_at
json.url groceries_item_url(groceries_item, format: :json)
