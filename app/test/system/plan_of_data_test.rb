require "application_system_test_case"

class PlanOfDataTest < ApplicationSystemTestCase
  setup do
    @plan_of_datum = plan_of_data(:one)
  end

  test "visiting the index" do
    visit plan_of_data_url
    assert_selector "h1", text: "Plan Of Data"
  end

  test "creating a Plan of datum" do
    visit plan_of_data_url
    click_on "New Plan Of Datum"

    fill_in "Velocity Max Download", with: @plan_of_datum.velocity_max_download
    fill_in "Velocity Max Upload", with: @plan_of_datum.velocity_max_upload
    click_on "Create Plan of datum"

    assert_text "Plan of datum was successfully created"
    click_on "Back"
  end

  test "updating a Plan of datum" do
    visit plan_of_data_url
    click_on "Edit", match: :first

    fill_in "Velocity Max Download", with: @plan_of_datum.velocity_max_download
    fill_in "Velocity Max Upload", with: @plan_of_datum.velocity_max_upload
    click_on "Update Plan of datum"

    assert_text "Plan of datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Plan of datum" do
    visit plan_of_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plan of datum was successfully destroyed"
  end
end
