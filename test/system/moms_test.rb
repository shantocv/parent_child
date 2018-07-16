require "application_system_test_case"

class MomsTest < ApplicationSystemTestCase
  setup do
    @mom = moms(:one)
  end

  test "visiting the index" do
    visit moms_url
    assert_selector "h1", text: "Moms"
  end

  test "creating a Mom" do
    visit moms_url
    click_on "New Mom"

    fill_in "Name", with: @mom.name
    click_on "Create Mom"

    assert_text "Mom was successfully created"
    click_on "Back"
  end

  test "updating a Mom" do
    visit moms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mom.name
    click_on "Update Mom"

    assert_text "Mom was successfully updated"
    click_on "Back"
  end

  test "destroying a Mom" do
    visit moms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mom was successfully destroyed"
  end
end
