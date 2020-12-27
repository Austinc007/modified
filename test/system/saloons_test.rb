require "application_system_test_case"

class SaloonsTest < ApplicationSystemTestCase
  setup do
    @saloon = saloons(:one)
  end

  test "visiting the index" do
    visit saloons_url
    assert_selector "h1", text: "Saloons"
  end

  test "creating a Saloon" do
    visit saloons_url
    click_on "New Saloon"

    fill_in "Address", with: @saloon.address
    fill_in "Closing time", with: @saloon.closing_time
    fill_in "Contact", with: @saloon.contact
    fill_in "Name", with: @saloon.name
    fill_in "Opening time", with: @saloon.opening_time
    fill_in "Services", with: @saloon.services
    click_on "Create Saloon"

    assert_text "Saloon was successfully created"
    click_on "Back"
  end

  test "updating a Saloon" do
    visit saloons_url
    click_on "Edit", match: :first

    fill_in "Address", with: @saloon.address
    fill_in "Closing time", with: @saloon.closing_time
    fill_in "Contact", with: @saloon.contact
    fill_in "Name", with: @saloon.name
    fill_in "Opening time", with: @saloon.opening_time
    fill_in "Services", with: @saloon.services
    click_on "Update Saloon"

    assert_text "Saloon was successfully updated"
    click_on "Back"
  end

  test "destroying a Saloon" do
    visit saloons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saloon was successfully destroyed"
  end
end
