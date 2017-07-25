require 'test_helper'
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path                                   #访问根路径(首页)
    assert_template 'static_pages/home'             #assert_template 方法检查首页是 否使用正确的视图渲染
    assert_select "a[href=?]", root_path, count: 2  #确保页面中有两个指向首页的链接
    assert_select "a[href=?]", about_path 
    assert_select "a[href=?]", contact_path
  end 
end