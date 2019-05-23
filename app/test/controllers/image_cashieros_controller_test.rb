require 'test_helper'

class ImageCashierosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_cashiero = image_cashieros(:one)
  end

  test "should get index" do
    get image_cashieros_url
    assert_response :success
  end

  test "should get new" do
    get new_image_cashiero_url
    assert_response :success
  end

  test "should create image_cashiero" do
    assert_difference('ImageCashiero.count') do
      post image_cashieros_url, params: { image_cashiero: { cashiero_id: @image_cashiero.cashiero_id, image: @image_cashiero.image } }
    end

    assert_redirected_to image_cashiero_url(ImageCashiero.last)
  end

  test "should show image_cashiero" do
    get image_cashiero_url(@image_cashiero)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_cashiero_url(@image_cashiero)
    assert_response :success
  end

  test "should update image_cashiero" do
    patch image_cashiero_url(@image_cashiero), params: { image_cashiero: { cashiero_id: @image_cashiero.cashiero_id, image: @image_cashiero.image } }
    assert_redirected_to image_cashiero_url(@image_cashiero)
  end

  test "should destroy image_cashiero" do
    assert_difference('ImageCashiero.count', -1) do
      delete image_cashiero_url(@image_cashiero)
    end

    assert_redirected_to image_cashieros_url
  end
end
