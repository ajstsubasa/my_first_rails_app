require "test_helper"

class Car3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car3 = car3s(:one)
  end

  test "should get index" do
    get car3s_url
    assert_response :success
  end

  test "should get new" do
    get new_car3_url
    assert_response :success
  end

  test "should create car3" do
    assert_difference('Car3.count') do
      post car3s_url, params: { car3: { make: @car3.make, model: @car3.model, year: @car3.year } }
    end

    assert_redirected_to car3_url(Car3.last)
  end

  test "should show car3" do
    get car3_url(@car3)
    assert_response :success
  end

  test "should get edit" do
    get edit_car3_url(@car3)
    assert_response :success
  end

  test "should update car3" do
    patch car3_url(@car3), params: { car3: { make: @car3.make, model: @car3.model, year: @car3.year } }
    assert_redirected_to car3_url(@car3)
  end

  test "should destroy car3" do
    assert_difference('Car3.count', -1) do
      delete car3_url(@car3)
    end

    assert_redirected_to car3s_url
  end
end
