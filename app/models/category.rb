class Category < ApplicationRecord
  has_many :posts, through: :post_categories
end
