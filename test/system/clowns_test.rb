require "application_system_test_case"

class ClownsTest < ApplicationSystemTestCase
  setup do
    @clown = clowns(:one)
  end

  test "visiting the index" do
    visit clowns_url
    assert_selector "h1", text: "Clowns"
  end

  test "should create clown" do
    visit clowns_url
    click_on "New clown"

    fill_in "Cost", with: @clown.cost
    fill_in "Description", with: @clown.description
    fill_in "Name", with: @clown.name
    click_on "Create Clown"

    assert_text "Clown was successfully created"
    click_on "Back"
  end

  test "should update Clown" do
    visit clown_url(@clown)
    click_on "Edit this clown", match: :first

    fill_in "Cost", with: @clown.cost
    fill_in "Description", with: @clown.description
    fill_in "Name", with: @clown.name
    click_on "Update Clown"

    assert_text "Clown was successfully updated"
    click_on "Back"
  end

  test "should destroy Clown" do
    visit clown_url(@clown)
    click_on "Destroy this clown", match: :first

    assert_text "Clown was successfully destroyed"
  end
end
