require "test_helper"

class Car2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car2 = car2s(:one)
  end

  test "should get index" do
    get car2s_url
    assert_response :success
  end

  test "should get new" do
    get new_car2_url
    assert_response :success
  end

  test "should create car2" do
    assert_difference('Car2.count') do
      post car2s_url, params: { car2: { make: @car2.make, model: @car2.model, year: @car2.year } }
    end

    assert_redirected_to car2_url(Car2.last)
  end

  test "should show car2" do
    get car2_url(@car2)
    assert_response :success
  end

  test "should get edit" do
    get edit_car2_url(@car2)
    assert_response :success
  end

  test "should update car2" do
    patch car2_url(@car2), params: { car2: { make: @car2.make, model: @car2.model, year: @car2.year } }
    assert_redirected_to car2_url(@car2)
  end

  test "should destroy car2" do
    assert_difference('Car2.count', -1) do
      delete car2_url(@car2)
    end

    assert_redirected_to car2s_url
  end
end
