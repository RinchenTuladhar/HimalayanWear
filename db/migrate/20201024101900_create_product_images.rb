class CreateProductImages < ActiveRecord::Migration[6.0]
  def change
    create_table :product_images do |t|
      t.integer :product_id
      t.boolean :primary
      t.integer :rank
      t.timestamps
    end
  end
end