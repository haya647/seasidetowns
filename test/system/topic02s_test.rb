require "application_system_test_case"

class Topic02sTest < ApplicationSystemTestCase
  setup do
    @topic02 = topic02s(:one)
  end

  test "visiting the index" do
    visit topic02s_url
    assert_selector "h1", text: "Topic02s"
  end

  test "creating a Topic02" do
    visit topic02s_url
    click_on "New Topic02"

    fill_in "Body", with: @topic02.body
    fill_in "Picture", with: @topic02.picture
    fill_in "Title", with: @topic02.title
    click_on "Create Topic02"

    assert_text "Topic02 was successfully created"
    click_on "Back"
  end

  test "updating a Topic02" do
    visit topic02s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @topic02.body
    fill_in "Picture", with: @topic02.picture
    fill_in "Title", with: @topic02.title
    click_on "Update Topic02"

    assert_text "Topic02 was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic02" do
    visit topic02s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic02 was successfully destroyed"
  end
end
