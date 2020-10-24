class UpdateProductsTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :category, :category_id
    rename_column :products, :sub_category, :sub_category_id
  end
end
