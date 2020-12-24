require "application_system_test_case"

class Car3sTest < ApplicationSystemTestCase
  setup do
    @car3 = car3s(:one)
  end

  test "visiting the index" do
    visit car3s_url
    assert_selector "h1", text: "Car3s"
  end

  test "creating a Car3" do
    visit car3s_url
    click_on "New Car3"

    fill_in "Make", with: @car3.make
    fill_in "Model", with: @car3.model
    fill_in "Year", with: @car3.year
    click_on "Create Car3"

    assert_text "Car3 was successfully created"
    click_on "Back"
  end

  test "updating a Car3" do
    visit car3s_url
    click_on "Edit", match: :first

    fill_in "Make", with: @car3.make
    fill_in "Model", with: @car3.model
    fill_in "Year", with: @car3.year
    click_on "Update Car3"

    assert_text "Car3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Car3" do
    visit car3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car3 was successfully destroyed"
  end
end
