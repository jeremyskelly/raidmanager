require 'test_helper'

class RaidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raider = raiders(:one)
  end

  test "should get index" do
    get raiders_url
    assert_response :success
  end

  test "should get new" do
    get new_raider_url
    assert_response :success
  end

  test "should create raider" do
    assert_difference('Raider.count') do
      post raiders_url, params: { raider: { battletag: @raider.battletag, name: @raider.name, rank: @raider.rank, role: @raider.role, wowclass: @raider.wowclass } }
    end

    assert_redirected_to raider_url(Raider.last)
  end

  test "should show raider" do
    get raider_url(@raider)
    assert_response :success
  end

  test "should get edit" do
    get edit_raider_url(@raider)
    assert_response :success
  end

  test "should update raider" do
    patch raider_url(@raider), params: { raider: { battletag: @raider.battletag, name: @raider.name, rank: @raider.rank, role: @raider.role, wowclass: @raider.wowclass } }
    assert_redirected_to raider_url(@raider)
  end

  test "should destroy raider" do
    assert_difference('Raider.count', -1) do
      delete raider_url(@raider)
    end

    assert_redirected_to raiders_url
  end
end
