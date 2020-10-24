class RemoveProductImagesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :product_images
  end
end
