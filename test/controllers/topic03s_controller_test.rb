require 'test_helper'

class Topic03sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic03 = topic03s(:one)
  end

  test "should get index" do
    get topic03s_url
    assert_response :success
  end

  test "should get new" do
    get new_topic03_url
    assert_response :success
  end

  test "should create topic03" do
    assert_difference('Topic03.count') do
      post topic03s_url, params: { topic03: { body: @topic03.body, picture: @topic03.picture, title: @topic03.title } }
    end

    assert_redirected_to topic03_url(Topic03.last)
  end

  test "should show topic03" do
    get topic03_url(@topic03)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic03_url(@topic03)
    assert_response :success
  end

  test "should update topic03" do
    patch topic03_url(@topic03), params: { topic03: { body: @topic03.body, picture: @topic03.picture, title: @topic03.title } }
    assert_redirected_to topic03_url(@topic03)
  end

  test "should destroy topic03" do
    assert_difference('Topic03.count', -1) do
      delete topic03_url(@topic03)
    end

    assert_redirected_to topic03s_url
  end
end
