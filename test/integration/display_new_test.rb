require 'test_helper'

class DisplaysNewTest < ActionDispatch::IntegrationTest
  
  def setup
    @disprod = disprods(:one)
  end
  
  test "Display add new product fail" do
    get disprods_path
    assert_template 'disprods/index'
    get new_disprod_path
    assert_template 'disprods/new'
    post disprods_path, params: { disprod: { dp_name: "", desc: ""} } 
    assert_template 'disprods/new'
    assert flash.empty?
  end
  
end
