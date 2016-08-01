require 'test_helper'

class CommunityHealthWorkersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_health_worker = community_health_workers(:one)
  end

  test "should get index" do
    get community_health_workers_url
    assert_response :success
  end

  test "should get new" do
    get new_community_health_worker_url
    assert_response :success
  end

  test "should create community_health_worker" do
    assert_difference('CommunityHealthWorker.count') do
      post community_health_workers_url, params: { community_health_worker: { birthdate: @community_health_worker.birthdate, gender: @community_health_worker.gender, name: @community_health_worker.name, phone: @community_health_worker.phone, surname: @community_health_worker.surname } }
    end

    assert_redirected_to community_health_worker_url(CommunityHealthWorker.last)
  end

  test "should show community_health_worker" do
    get community_health_worker_url(@community_health_worker)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_health_worker_url(@community_health_worker)
    assert_response :success
  end

  test "should update community_health_worker" do
    patch community_health_worker_url(@community_health_worker), params: { community_health_worker: { birthdate: @community_health_worker.birthdate, gender: @community_health_worker.gender, name: @community_health_worker.name, phone: @community_health_worker.phone, surname: @community_health_worker.surname } }
    assert_redirected_to community_health_worker_url(@community_health_worker)
  end

  test "should destroy community_health_worker" do
    assert_difference('CommunityHealthWorker.count', -1) do
      delete community_health_worker_url(@community_health_worker)
    end

    assert_redirected_to community_health_workers_url
  end
end
