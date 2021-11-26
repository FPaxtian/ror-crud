require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Works"
  end

  test "creating a Work" do
    visit works_url
    click_on "New Work"

    fill_in "Acount woks", with: @work.acount_woks
    fill_in "Employees", with: @work.employees_id
    fill_in "End date works", with: @work.end_date_works
    fill_in "Location", with: @work.location
    fill_in "Start date works", with: @work.start_date_works
    fill_in "Type works", with: @work.type_works
    fill_in "Works name", with: @work.works_name
    fill_in "Worls desc", with: @work.worls_desc
    click_on "Create Work"

    assert_text "Work was successfully created"
    click_on "Back"
  end

  test "updating a Work" do
    visit works_url
    click_on "Edit", match: :first

    fill_in "Acount woks", with: @work.acount_woks
    fill_in "Employees", with: @work.employees_id
    fill_in "End date works", with: @work.end_date_works
    fill_in "Location", with: @work.location
    fill_in "Start date works", with: @work.start_date_works
    fill_in "Type works", with: @work.type_works
    fill_in "Works name", with: @work.works_name
    fill_in "Worls desc", with: @work.worls_desc
    click_on "Update Work"

    assert_text "Work was successfully updated"
    click_on "Back"
  end

  test "destroying a Work" do
    visit works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work was successfully destroyed"
  end
end
