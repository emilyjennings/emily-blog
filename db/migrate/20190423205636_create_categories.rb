class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :post_id

      t.timestamps
    end
  end
end
