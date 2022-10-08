require "application_system_test_case"

class VacbibsTest < ApplicationSystemTestCase
  setup do
    @vacbib = vacbibs(:one)
  end

  test "visiting the index" do
    visit vacbibs_url
    assert_selector "h1", text: "Vacbibs"
  end

  test "should create vacbib" do
    visit vacbibs_url
    click_on "New vacbib"

    fill_in "Body", with: @vacbib.body
    fill_in "Category", with: @vacbib.category
    fill_in "Title", with: @vacbib.title
    click_on "Create Vacbib"

    assert_text "Vacbib was successfully created"
    click_on "Back"
  end

  test "should update Vacbib" do
    visit vacbib_url(@vacbib)
    click_on "Edit this vacbib", match: :first

    fill_in "Body", with: @vacbib.body
    fill_in "Category", with: @vacbib.category
    fill_in "Title", with: @vacbib.title
    click_on "Update Vacbib"

    assert_text "Vacbib was successfully updated"
    click_on "Back"
  end

  test "should destroy Vacbib" do
    visit vacbib_url(@vacbib)
    click_on "Destroy this vacbib", match: :first

    assert_text "Vacbib was successfully destroyed"
  end
end
