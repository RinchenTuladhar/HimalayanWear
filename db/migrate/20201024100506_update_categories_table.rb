class UpdateCategoriesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :url, :string
    add_column :sub_categories, :url, :string
  end
end
