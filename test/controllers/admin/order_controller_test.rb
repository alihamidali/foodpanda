require 'test_helper'

class Admin::OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_order_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_order_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_order_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_order_edit_url
    assert_response :success
  end

  test "should get delete" do
    get admin_order_delete_url
    assert_response :success
  end

end
