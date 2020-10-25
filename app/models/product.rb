class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category

  has_one_attached :main_image
  has_many_attached :images

  validates_uniqueness_of :sku

  before_update :generate_url

  def generate_url
    return unless url.blank?
    new_url = title.parameterize + "-" + id.to_s
    self.url = new_url
  end
end
