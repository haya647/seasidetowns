require "application_system_test_case"

class Topic03sTest < ApplicationSystemTestCase
  setup do
    @topic03 = topic03s(:one)
  end

  test "visiting the index" do
    visit topic03s_url
    assert_selector "h1", text: "Topic03s"
  end

  test "creating a Topic03" do
    visit topic03s_url
    click_on "New Topic03"

    fill_in "Body", with: @topic03.body
    fill_in "Picture", with: @topic03.picture
    fill_in "Title", with: @topic03.title
    click_on "Create Topic03"

    assert_text "Topic03 was successfully created"
    click_on "Back"
  end

  test "updating a Topic03" do
    visit topic03s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @topic03.body
    fill_in "Picture", with: @topic03.picture
    fill_in "Title", with: @topic03.title
    click_on "Update Topic03"

    assert_text "Topic03 was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic03" do
    visit topic03s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic03 was successfully destroyed"
  end
end
