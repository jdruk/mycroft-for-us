require 'test_helper'

class AddressRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_range = address_ranges(:one)
  end

  test "should get index" do
    get address_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_address_range_url
    assert_response :success
  end

  test "should create address_range" do
    assert_difference('AddressRange.count') do
      post address_ranges_url, params: { address_range: { concentrator_id: @address_range.concentrator_id, end_range: @address_range.end_range, name: @address_range.name, start_range: @address_range.start_range } }
    end

    assert_redirected_to address_range_url(AddressRange.last)
  end

  test "should show address_range" do
    get address_range_url(@address_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_range_url(@address_range)
    assert_response :success
  end

  test "should update address_range" do
    patch address_range_url(@address_range), params: { address_range: { concentrator_id: @address_range.concentrator_id, end_range: @address_range.end_range, name: @address_range.name, start_range: @address_range.start_range } }
    assert_redirected_to address_range_url(@address_range)
  end

  test "should destroy address_range" do
    assert_difference('AddressRange.count', -1) do
      delete address_range_url(@address_range)
    end

    assert_redirected_to address_ranges_url
  end
end
