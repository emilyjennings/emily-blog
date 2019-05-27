class AddCategoryIdToPosts < ActiveRecord::Migration[5.2]
  change_table(:posts) do |t|
    t.integer :category_id
  end
end
