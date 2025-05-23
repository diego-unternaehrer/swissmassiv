require "test_helper"

class MediaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get media_index_url
    assert_response :success
  end

  test "should get new" do
    get media_new_url
    assert_response :success
  end

  test "should get create" do
    get media_create_url
    assert_response :success
  end

  test "should get destroy" do
    get media_destroy_url
    assert_response :success
  end
end
