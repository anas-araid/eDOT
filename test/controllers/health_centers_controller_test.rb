require 'test_helper'

class HealthCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_center = health_centers(:one)
  end

  test "should get index" do
    get health_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_health_center_url
    assert_response :success
  end

  test "should create health_center" do
    assert_difference('HealthCenter.count') do
      post health_centers_url, params: { health_center: { address: @health_center.address, name: @health_center.name, phone: @health_center.phone } }
    end

    assert_redirected_to health_center_url(HealthCenter.last)
  end

  test "should show health_center" do
    get health_center_url(@health_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_center_url(@health_center)
    assert_response :success
  end

  test "should update health_center" do
    patch health_center_url(@health_center), params: { health_center: { address: @health_center.address, name: @health_center.name, phone: @health_center.phone } }
    assert_redirected_to health_center_url(@health_center)
  end

  test "should destroy health_center" do
    assert_difference('HealthCenter.count', -1) do
      delete health_center_url(@health_center)
    end

    assert_redirected_to health_centers_url
  end
end
