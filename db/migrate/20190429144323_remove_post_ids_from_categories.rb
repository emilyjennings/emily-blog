class RemovePostIdsFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :post_id, :integer
  end
end
