require 'test_helper'

class ConcentratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concentrator = concentrators(:one)
  end

  test "should get index" do
    get concentrators_url
    assert_response :success
  end

  test "should get new" do
    get new_concentrator_url
    assert_response :success
  end

  test "should create concentrator" do
    assert_difference('Concentrator.count') do
      post concentrators_url, params: { concentrator: { address: @concentrator.address, hostname: @concentrator.hostname, login: @concentrator.login, password: @concentrator.password } }
    end

    assert_redirected_to concentrator_url(Concentrator.last)
  end

  test "should show concentrator" do
    get concentrator_url(@concentrator)
    assert_response :success
  end

  test "should get edit" do
    get edit_concentrator_url(@concentrator)
    assert_response :success
  end

  test "should update concentrator" do
    patch concentrator_url(@concentrator), params: { concentrator: { address: @concentrator.address, hostname: @concentrator.hostname, login: @concentrator.login, password: @concentrator.password } }
    assert_redirected_to concentrator_url(@concentrator)
  end

  test "should destroy concentrator" do
    assert_difference('Concentrator.count', -1) do
      delete concentrator_url(@concentrator)
    end

    assert_redirected_to concentrators_url
  end
end
