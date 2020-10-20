class Category < ApplicationRecord
  has_many :products, through: :category_allocation
end
