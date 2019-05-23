require "application_system_test_case"

class ImageCashierosTest < ApplicationSystemTestCase
  setup do
    @image_cashiero = image_cashieros(:one)
  end

  test "visiting the index" do
    visit image_cashieros_url
    assert_selector "h1", text: "Image Cashieros"
  end

  test "creating a Image cashiero" do
    visit image_cashieros_url
    click_on "New Image Cashiero"

    fill_in "Cashiero", with: @image_cashiero.cashiero_id
    fill_in "Image", with: @image_cashiero.image
    click_on "Create Image cashiero"

    assert_text "Image cashiero was successfully created"
    click_on "Back"
  end

  test "updating a Image cashiero" do
    visit image_cashieros_url
    click_on "Edit", match: :first

    fill_in "Cashiero", with: @image_cashiero.cashiero_id
    fill_in "Image", with: @image_cashiero.image
    click_on "Update Image cashiero"

    assert_text "Image cashiero was successfully updated"
    click_on "Back"
  end

  test "destroying a Image cashiero" do
    visit image_cashieros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image cashiero was successfully destroyed"
  end
end
