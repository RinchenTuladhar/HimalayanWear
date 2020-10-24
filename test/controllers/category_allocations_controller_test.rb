require 'test_helper'

class CategoryAllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_allocation = category_allocations(:one)
  end

  test "should get index" do
    get category_allocations_url
    assert_response :success
  end

  test "should get new" do
    get new_category_allocation_url
    assert_response :success
  end

  test "should create category_allocation" do
    assert_difference('CategoryAllocation.count') do
      post category_allocations_url, params: { category_allocation: { category_id: @category_allocation.category_id, product_id: @category_allocation.product_id } }
    end

    assert_redirected_to category_allocation_url(CategoryAllocation.last)
  end

  test "should show category_allocation" do
    get category_allocation_url(@category_allocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_allocation_url(@category_allocation)
    assert_response :success
  end

  test "should update category_allocation" do
    patch category_allocation_url(@category_allocation), params: { category_allocation: { category_id: @category_allocation.category_id, product_id: @category_allocation.product_id } }
    assert_redirected_to category_allocation_url(@category_allocation)
  end

  test "should destroy category_allocation" do
    assert_difference('CategoryAllocation.count', -1) do
      delete category_allocation_url(@category_allocation)
    end

    assert_redirected_to category_allocations_url
  end
end
