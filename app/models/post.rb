class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has many :categories, through: :post_categories
end
