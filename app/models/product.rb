class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  
  validates_uniqueness_of :sku

  after_create :allocate_category

  def allocate_category
    byebug
  end
end
