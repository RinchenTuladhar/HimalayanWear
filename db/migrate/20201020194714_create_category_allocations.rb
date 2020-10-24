class CreateCategoryAllocations < ActiveRecord::Migration[6.0]
  def change
    create_table :category_allocations do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
