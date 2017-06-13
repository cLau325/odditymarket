require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forSale" do
    get pages_forSale_url
    assert_response :success
  end

end
