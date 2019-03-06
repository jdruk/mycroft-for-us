require 'test_helper'

class PlanOfDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_of_datum = plan_of_data(:one)
  end

  test "should get index" do
    get plan_of_data_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_of_datum_url
    assert_response :success
  end

  test "should create plan_of_datum" do
    assert_difference('PlanOfDatum.count') do
      post plan_of_data_url, params: { plan_of_datum: { velocity_max_download: @plan_of_datum.velocity_max_download, velocity_max_upload: @plan_of_datum.velocity_max_upload } }
    end

    assert_redirected_to plan_of_datum_url(PlanOfDatum.last)
  end

  test "should show plan_of_datum" do
    get plan_of_datum_url(@plan_of_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_of_datum_url(@plan_of_datum)
    assert_response :success
  end

  test "should update plan_of_datum" do
    patch plan_of_datum_url(@plan_of_datum), params: { plan_of_datum: { velocity_max_download: @plan_of_datum.velocity_max_download, velocity_max_upload: @plan_of_datum.velocity_max_upload } }
    assert_redirected_to plan_of_datum_url(@plan_of_datum)
  end

  test "should destroy plan_of_datum" do
    assert_difference('PlanOfDatum.count', -1) do
      delete plan_of_datum_url(@plan_of_datum)
    end

    assert_redirected_to plan_of_data_url
  end
end
