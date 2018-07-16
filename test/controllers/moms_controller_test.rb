require 'test_helper'

class MomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mom = moms(:one)
  end

  test "should get index" do
    get moms_url
    assert_response :success
  end

  test "should get new" do
    get new_mom_url
    assert_response :success
  end

  test "should create mom" do
    assert_difference('Mom.count') do
      post moms_url, params: { mom: { name: @mom.name } }
    end

    assert_redirected_to mom_url(Mom.last)
  end

  test "should show mom" do
    get mom_url(@mom)
    assert_response :success
  end

  test "should get edit" do
    get edit_mom_url(@mom)
    assert_response :success
  end

  test "should update mom" do
    patch mom_url(@mom), params: { mom: { name: @mom.name } }
    assert_redirected_to mom_url(@mom)
  end

  test "should destroy mom" do
    assert_difference('Mom.count', -1) do
      delete mom_url(@mom)
    end

    assert_redirected_to moms_url
  end
end
