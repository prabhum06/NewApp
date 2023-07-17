require 'test_helper'

class GroceriesItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groceries_item = groceries_items(:one)
  end

  test "should get index" do
    get groceries_items_url
    assert_response :success
  end

  test "should get new" do
    get new_groceries_item_url
    assert_response :success
  end

  test "should create groceries_item" do
    assert_difference('GroceriesItem.count') do
      post groceries_items_url, params: { groceries_item: { availability: @groceries_item.availability, name: @groceries_item.name, price: @groceries_item.price } }
    end

    assert_redirected_to groceries_item_url(GroceriesItem.last)
  end

  test "should show groceries_item" do
    get groceries_item_url(@groceries_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_groceries_item_url(@groceries_item)
    assert_response :success
  end

  test "should update groceries_item" do
    patch groceries_item_url(@groceries_item), params: { groceries_item: { availability: @groceries_item.availability, name: @groceries_item.name, price: @groceries_item.price } }
    assert_redirected_to groceries_item_url(@groceries_item)
  end

  test "should destroy groceries_item" do
    assert_difference('GroceriesItem.count', -1) do
      delete groceries_item_url(@groceries_item)
    end

    assert_redirected_to groceries_items_url
  end
end
