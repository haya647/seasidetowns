require "application_system_test_case"

class Topic04sTest < ApplicationSystemTestCase
  setup do
    @topic04 = topic04s(:one)
  end

  test "visiting the index" do
    visit topic04s_url
    assert_selector "h1", text: "Topic04s"
  end

  test "creating a Topic04" do
    visit topic04s_url
    click_on "New Topic04"

    fill_in "Body", with: @topic04.body
    fill_in "Picture", with: @topic04.picture
    fill_in "Title", with: @topic04.title
    click_on "Create Topic04"

    assert_text "Topic04 was successfully created"
    click_on "Back"
  end

  test "updating a Topic04" do
    visit topic04s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @topic04.body
    fill_in "Picture", with: @topic04.picture
    fill_in "Title", with: @topic04.title
    click_on "Update Topic04"

    assert_text "Topic04 was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic04" do
    visit topic04s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic04 was successfully destroyed"
  end
end
