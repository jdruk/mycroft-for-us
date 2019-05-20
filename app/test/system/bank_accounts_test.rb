require "application_system_test_case"

class BankAccountsTest < ApplicationSystemTestCase
  setup do
    @bank_account = bank_accounts(:one)
  end

  test "visiting the index" do
    visit bank_accounts_url
    assert_selector "h1", text: "Bank Accounts"
  end

  test "creating a Bank account" do
    visit bank_accounts_url
    click_on "New Bank Account"

    fill_in "Account", with: @bank_account.account
    fill_in "Agency", with: @bank_account.agency
    fill_in "Bank", with: @bank_account.bank
    fill_in "Digit", with: @bank_account.digit
    fill_in "Name", with: @bank_account.name
    check "Visible" if @bank_account.visible
    click_on "Create Bank account"

    assert_text "Bank account was successfully created"
    click_on "Back"
  end

  test "updating a Bank account" do
    visit bank_accounts_url
    click_on "Edit", match: :first

    fill_in "Account", with: @bank_account.account
    fill_in "Agency", with: @bank_account.agency
    fill_in "Bank", with: @bank_account.bank
    fill_in "Digit", with: @bank_account.digit
    fill_in "Name", with: @bank_account.name
    check "Visible" if @bank_account.visible
    click_on "Update Bank account"

    assert_text "Bank account was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank account" do
    visit bank_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank account was successfully destroyed"
  end
end
