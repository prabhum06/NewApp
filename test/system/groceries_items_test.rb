require "application_system_test_case"

class GroceriesItemsTest < ApplicationSystemTestCase
  setup do
    @groceries_item = groceries_items(:one)
  end

  test "visiting the index" do
    visit groceries_items_url
    assert_selector "h1", text: "Groceries Items"
  end

  test "creating a Groceries item" do
    visit groceries_items_url
    click_on "New Groceries Item"

    fill_in "Availability", with: @groceries_item.availability
    fill_in "Name", with: @groceries_item.name
    fill_in "Price", with: @groceries_item.price
    click_on "Create Groceries item"

    assert_text "Groceries item was successfully created"
    click_on "Back"
  end

  test "updating a Groceries item" do
    visit groceries_items_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @groceries_item.availability
    fill_in "Name", with: @groceries_item.name
    fill_in "Price", with: @groceries_item.price
    click_on "Update Groceries item"

    assert_text "Groceries item was successfully updated"
    click_on "Back"
  end

  test "destroying a Groceries item" do
    visit groceries_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Groceries item was successfully destroyed"
  end
end
