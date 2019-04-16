require "application_system_test_case"

class AddressRangesTest < ApplicationSystemTestCase
  setup do
    @address_range = address_ranges(:one)
  end

  test "visiting the index" do
    visit address_ranges_url
    assert_selector "h1", text: "Address Ranges"
  end

  test "creating a Address range" do
    visit address_ranges_url
    click_on "New Address Range"

    fill_in "Concentrator", with: @address_range.concentrator_id
    fill_in "End Range", with: @address_range.end_range
    fill_in "Name", with: @address_range.name
    fill_in "Start Range", with: @address_range.start_range
    click_on "Create Address range"

    assert_text "Address range was successfully created"
    click_on "Back"
  end

  test "updating a Address range" do
    visit address_ranges_url
    click_on "Edit", match: :first

    fill_in "Concentrator", with: @address_range.concentrator_id
    fill_in "End Range", with: @address_range.end_range
    fill_in "Name", with: @address_range.name
    fill_in "Start Range", with: @address_range.start_range
    click_on "Update Address range"

    assert_text "Address range was successfully updated"
    click_on "Back"
  end

  test "destroying a Address range" do
    visit address_ranges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address range was successfully destroyed"
  end
end
