require 'test_helper'

class Admin::RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_restaurant_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_restaurant_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_restaurant_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_restaurant_edit_url
    assert_response :success
  end

  test "should get delete" do
    get admin_restaurant_delete_url
    assert_response :success
  end

end
