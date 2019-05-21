require 'test_helper'

class CashierosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashiero = cashieros(:one)
  end

  test "should get index" do
    get cashieros_url
    assert_response :success
  end

  test "should get new" do
    get new_cashiero_url
    assert_response :success
  end

  test "should create cashiero" do
    assert_difference('Cashiero.count') do
      post cashieros_url, params: { cashiero: { bank_account_id: @cashiero.bank_account_id, description: @cashiero.description, operation: @cashiero.operation, payment_type: @cashiero.payment_type, photos: @cashiero.photos, user_id: @cashiero.user_id, value: @cashiero.value } }
    end

    assert_redirected_to cashiero_url(Cashiero.last)
  end

  test "should show cashiero" do
    get cashiero_url(@cashiero)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashiero_url(@cashiero)
    assert_response :success
  end

  test "should update cashiero" do
    patch cashiero_url(@cashiero), params: { cashiero: { bank_account_id: @cashiero.bank_account_id, description: @cashiero.description, operation: @cashiero.operation, payment_type: @cashiero.payment_type, photos: @cashiero.photos, user_id: @cashiero.user_id, value: @cashiero.value } }
    assert_redirected_to cashiero_url(@cashiero)
  end

  test "should destroy cashiero" do
    assert_difference('Cashiero.count', -1) do
      delete cashiero_url(@cashiero)
    end

    assert_redirected_to cashieros_url
  end
end
