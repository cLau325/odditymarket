require 'test_helper'

class ForsalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forsales_path
    assert_response :success
  end
end