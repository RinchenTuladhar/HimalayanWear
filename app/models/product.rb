class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category

  has_one_attached :main_image
  has_many_attached :images

  validates_uniqueness_of :sku
end
