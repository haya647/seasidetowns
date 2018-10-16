require 'test_helper'

class Topic04sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic04 = topic04s(:one)
  end

  test "should get index" do
    get topic04s_url
    assert_response :success
  end

  test "should get new" do
    get new_topic04_url
    assert_response :success
  end

  test "should create topic04" do
    assert_difference('Topic04.count') do
      post topic04s_url, params: { topic04: { body: @topic04.body, picture: @topic04.picture, title: @topic04.title } }
    end

    assert_redirected_to topic04_url(Topic04.last)
  end

  test "should show topic04" do
    get topic04_url(@topic04)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic04_url(@topic04)
    assert_response :success
  end

  test "should update topic04" do
    patch topic04_url(@topic04), params: { topic04: { body: @topic04.body, picture: @topic04.picture, title: @topic04.title } }
    assert_redirected_to topic04_url(@topic04)
  end

  test "should destroy topic04" do
    assert_difference('Topic04.count', -1) do
      delete topic04_url(@topic04)
    end

    assert_redirected_to topic04s_url
  end
end
