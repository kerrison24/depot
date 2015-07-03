require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "product maintanence page" do
    get :index
    assert_response :success
    assert_select 'h1', 'Listing products'
    assert_select 'a', 'New Product'
    assert_select 'table tr td', minimum: 3
    assert_select '#main table a', minimum: 3
  end
end
