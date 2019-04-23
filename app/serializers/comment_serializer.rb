class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
end
