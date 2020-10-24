class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :category
      t.integer :sub_category
      t.integer :quantity
      t.string :sku
      t.decimal :price, :precision => 10, :scale => 2
      t.decimal :compare_to_price, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
