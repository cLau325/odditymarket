require 'test_helper'

class ForauctionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forauctions_path
    assert_response :success
  end
end
