require 'test_helper'

class BloodbanksControllerTest < ActionController::TestCase
  setup do
    @bloodbank = bloodbanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloodbanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloodbank" do
    assert_difference('Bloodbank.count') do
      post :create, bloodbank: { address: @bloodbank.address, email: @bloodbank.email, landline: @bloodbank.landline, mobile: @bloodbank.mobile, name: @bloodbank.name, varificationstatus: @bloodbank.varificationstatus, website: @bloodbank.website }
    end

    assert_redirected_to bloodbank_path(assigns(:bloodbank))
  end

  test "should show bloodbank" do
    get :show, id: @bloodbank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloodbank
    assert_response :success
  end

  test "should update bloodbank" do
    patch :update, id: @bloodbank, bloodbank: { address: @bloodbank.address, email: @bloodbank.email, landline: @bloodbank.landline, mobile: @bloodbank.mobile, name: @bloodbank.name, varificationstatus: @bloodbank.varificationstatus, website: @bloodbank.website }
    assert_redirected_to bloodbank_path(assigns(:bloodbank))
  end

  test "should destroy bloodbank" do
    assert_difference('Bloodbank.count', -1) do
      delete :destroy, id: @bloodbank
    end

    assert_redirected_to bloodbanks_path
  end
end
