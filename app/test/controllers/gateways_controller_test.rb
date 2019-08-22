require 'test_helper'

class GatewaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gateway = gateways(:one)
  end

  test "should get index" do
    get gateways_url
    assert_response :success
  end

  test "should get new" do
    get new_gateway_url
    assert_response :success
  end

  test "should create gateway" do
    assert_difference('Gateway.count') do
      post gateways_url, params: { gateway: { address: @gateway.address, concentrator_id: @gateway.concentrator_id, interface: @gateway.interface, name: @gateway.name } }
    end

    assert_redirected_to gateway_url(Gateway.last)
  end

  test "should show gateway" do
    get gateway_url(@gateway)
    assert_response :success
  end

  test "should get edit" do
    get edit_gateway_url(@gateway)
    assert_response :success
  end

  test "should update gateway" do
    patch gateway_url(@gateway), params: { gateway: { address: @gateway.address, concentrator_id: @gateway.concentrator_id, interface: @gateway.interface, name: @gateway.name } }
    assert_redirected_to gateway_url(@gateway)
  end

  test "should destroy gateway" do
    assert_difference('Gateway.count', -1) do
      delete gateway_url(@gateway)
    end

    assert_redirected_to gateways_url
  end
end
