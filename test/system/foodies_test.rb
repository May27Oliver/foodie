require "application_system_test_case"

class FoodiesTest < ApplicationSystemTestCase
  setup do
    @foody = foodies(:one)
  end

  test "visiting the index" do
    visit foodies_url
    assert_selector "h1", text: "Foodies"
  end

  test "creating a Foodie" do
    visit foodies_url
    click_on "New Foodie"

    fill_in "Integer", with: @foody.integer
    fill_in "Price", with: @foody.price
    fill_in "Recommender", with: @foody.recommender_id
    fill_in "String", with: @foody.string
    fill_in "Type", with: @foody.type
    fill_in "Url", with: @foody.url
    click_on "Create Foodie"

    assert_text "Foodie was successfully created"
    click_on "Back"
  end

  test "updating a Foodie" do
    visit foodies_url
    click_on "Edit", match: :first

    fill_in "Integer", with: @foody.integer
    fill_in "Price", with: @foody.price
    fill_in "Recommender", with: @foody.recommender_id
    fill_in "String", with: @foody.string
    fill_in "Type", with: @foody.type
    fill_in "Url", with: @foody.url
    click_on "Update Foodie"

    assert_text "Foodie was successfully updated"
    click_on "Back"
  end

  test "destroying a Foodie" do
    visit foodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foodie was successfully destroyed"
  end
end
