class PostCategorySerializer < ActiveModel::Serializer
  attributes :id, :post_id, :category_id
end
