require "application_system_test_case"

class CategoryAllocationsTest < ApplicationSystemTestCase
  setup do
    @category_allocation = category_allocations(:one)
  end

  test "visiting the index" do
    visit category_allocations_url
    assert_selector "h1", text: "Category Allocations"
  end

  test "creating a Category allocation" do
    visit category_allocations_url
    click_on "New Category Allocation"

    fill_in "Category", with: @category_allocation.category_id
    fill_in "Product", with: @category_allocation.product_id
    click_on "Create Category allocation"

    assert_text "Category allocation was successfully created"
    click_on "Back"
  end

  test "updating a Category allocation" do
    visit category_allocations_url
    click_on "Edit", match: :first

    fill_in "Category", with: @category_allocation.category_id
    fill_in "Product", with: @category_allocation.product_id
    click_on "Update Category allocation"

    assert_text "Category allocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Category allocation" do
    visit category_allocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category allocation was successfully destroyed"
  end
end
