json.extract! post_category, :id, :post_id, :category_id, :created_at, :updated_at
json.url post_category_url(post_category, format: :json)
