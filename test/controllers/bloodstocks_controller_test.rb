require 'test_helper'

class BloodstocksControllerTest < ActionController::TestCase
  setup do
    @bloodstock = bloodstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloodstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloodstock" do
    assert_difference('Bloodstock.count') do
      post :create, bloodstock: { bloodbank_id: @bloodstock.bloodbank_id, bloodcomponentid: @bloodstock.bloodcomponentid, bloodgroupid: @bloodstock.bloodgroupid, units: @bloodstock.units, updatedate: @bloodstock.updatedate }
    end

    assert_redirected_to bloodstock_path(assigns(:bloodstock))
  end

  test "should show bloodstock" do
    get :show, id: @bloodstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloodstock
    assert_response :success
  end

  test "should update bloodstock" do
    patch :update, id: @bloodstock, bloodstock: { bloodbank_id: @bloodstock.bloodbank_id, bloodcomponentid: @bloodstock.bloodcomponentid, bloodgroupid: @bloodstock.bloodgroupid, units: @bloodstock.units, updatedate: @bloodstock.updatedate }
    assert_redirected_to bloodstock_path(assigns(:bloodstock))
  end

  test "should destroy bloodstock" do
    assert_difference('Bloodstock.count', -1) do
      delete :destroy, id: @bloodstock
    end

    assert_redirected_to bloodstocks_path
  end
end
