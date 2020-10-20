json.extract! product, :id, :title, :description, :category, :sub_category, :quantity, :sku, :price, :price, :compare_to_price, :compare_to_price, :created_at, :updated_at
json.url product_url(product, format: :json)
