require 'test_helper'

class DisprodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get display_path
    assert_response :success
  end
end
