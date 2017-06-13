require 'test_helper'

class SalesPartControllerTest < ActionDispatch::IntegrationTest
  test "should get forSale" do
    get sales_part_forSale_url
    assert_response :success
  end

  test "should get forAuction" do
    get sales_part_forAuction_url
    assert_response :success
  end

end
