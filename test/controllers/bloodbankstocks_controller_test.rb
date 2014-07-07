require 'test_helper'

class BloodbankstocksControllerTest < ActionController::TestCase
  setup do
    @bloodbankstock = bloodbankstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloodbankstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloodbankstock" do
    assert_difference('Bloodbankstock.count') do
      post :create, bloodbankstock: { bloodcomponentid: @bloodbankstock.bloodcomponentid, bloodgroupid: @bloodbankstock.bloodgroupid, orgid: @bloodbankstock.orgid, units: @bloodbankstock.units, updatedate: @bloodbankstock.updatedate }
    end

    assert_redirected_to bloodbankstock_path(assigns(:bloodbankstock))
  end

  test "should show bloodbankstock" do
    get :show, id: @bloodbankstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloodbankstock
    assert_response :success
  end

  test "should update bloodbankstock" do
    patch :update, id: @bloodbankstock, bloodbankstock: { bloodcomponentid: @bloodbankstock.bloodcomponentid, bloodgroupid: @bloodbankstock.bloodgroupid, orgid: @bloodbankstock.orgid, units: @bloodbankstock.units, updatedate: @bloodbankstock.updatedate }
    assert_redirected_to bloodbankstock_path(assigns(:bloodbankstock))
  end

  test "should destroy bloodbankstock" do
    assert_difference('Bloodbankstock.count', -1) do
      delete :destroy, id: @bloodbankstock
    end

    assert_redirected_to bloodbankstocks_path
  end
end
