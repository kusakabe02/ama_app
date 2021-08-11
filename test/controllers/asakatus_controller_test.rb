require "test_helper"

class AsakatusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get asakatus_new_url
    assert_response :success
  end

  test "should get index" do
    get asakatus_index_url
    assert_response :success
  end

  test "should get show" do
    get asakatus_show_url
    assert_response :success
  end

  test "should get create" do
    get asakatus_create_url
    assert_response :success
  end

  test "should get destroy" do
    get asakatus_destroy_url
    assert_response :success
  end
end
