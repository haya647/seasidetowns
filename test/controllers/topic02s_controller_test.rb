require 'test_helper'

class Topic02sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic02 = topic02s(:one)
  end

  test "should get index" do
    get topic02s_url
    assert_response :success
  end

  test "should get new" do
    get new_topic02_url
    assert_response :success
  end

  test "should create topic02" do
    assert_difference('Topic02.count') do
      post topic02s_url, params: { topic02: { body: @topic02.body, picture: @topic02.picture, title: @topic02.title } }
    end

    assert_redirected_to topic02_url(Topic02.last)
  end

  test "should show topic02" do
    get topic02_url(@topic02)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic02_url(@topic02)
    assert_response :success
  end

  test "should update topic02" do
    patch topic02_url(@topic02), params: { topic02: { body: @topic02.body, picture: @topic02.picture, title: @topic02.title } }
    assert_redirected_to topic02_url(@topic02)
  end

  test "should destroy topic02" do
    assert_difference('Topic02.count', -1) do
      delete topic02_url(@topic02)
    end

    assert_redirected_to topic02s_url
  end
end
