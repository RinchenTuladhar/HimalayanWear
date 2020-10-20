class Product < ApplicationRecord
  validates_uniqueness_of :sku
end
