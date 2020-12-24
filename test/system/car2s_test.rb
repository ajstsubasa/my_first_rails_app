require "application_system_test_case"

class Car2sTest < ApplicationSystemTestCase
  setup do
    @car2 = car2s(:one)
  end

  test "visiting the index" do
    visit car2s_url
    assert_selector "h1", text: "Car2s"
  end

  test "creating a Car2" do
    visit car2s_url
    click_on "New Car2"

    fill_in "Make", with: @car2.make
    fill_in "Model", with: @car2.model
    fill_in "Year", with: @car2.year
    click_on "Create Car2"

    assert_text "Car2 was successfully created"
    click_on "Back"
  end

  test "updating a Car2" do
    visit car2s_url
    click_on "Edit", match: :first

    fill_in "Make", with: @car2.make
    fill_in "Model", with: @car2.model
    fill_in "Year", with: @car2.year
    click_on "Update Car2"

    assert_text "Car2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Car2" do
    visit car2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car2 was successfully destroyed"
  end
end
