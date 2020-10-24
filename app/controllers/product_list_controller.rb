class ProductListController < ApplicationController
  def show
    sub_category = SubCategory.find_by(url: product_list_params);
    @products = sub_category.products
  end

  def product_list_params
    params.require(:id)
  end
end
