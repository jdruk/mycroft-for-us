require "application_system_test_case"

class CashierosTest < ApplicationSystemTestCase
  setup do
    @cashiero = cashieros(:one)
  end

  test "visiting the index" do
    visit cashieros_url
    assert_selector "h1", text: "Cashieros"
  end

  test "creating a Cashiero" do
    visit cashieros_url
    click_on "New Cashiero"

    fill_in "Bank account", with: @cashiero.bank_account_id
    fill_in "Description", with: @cashiero.description
    fill_in "Operation", with: @cashiero.operation
    fill_in "Payment type", with: @cashiero.payment_type
    fill_in "Photos", with: @cashiero.photos
    fill_in "User", with: @cashiero.user_id
    fill_in "Value", with: @cashiero.value
    click_on "Create Cashiero"

    assert_text "Cashiero was successfully created"
    click_on "Back"
  end

  test "updating a Cashiero" do
    visit cashieros_url
    click_on "Edit", match: :first

    fill_in "Bank account", with: @cashiero.bank_account_id
    fill_in "Description", with: @cashiero.description
    fill_in "Operation", with: @cashiero.operation
    fill_in "Payment type", with: @cashiero.payment_type
    fill_in "Photos", with: @cashiero.photos
    fill_in "User", with: @cashiero.user_id
    fill_in "Value", with: @cashiero.value
    click_on "Update Cashiero"

    assert_text "Cashiero was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashiero" do
    visit cashieros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashiero was successfully destroyed"
  end
end
