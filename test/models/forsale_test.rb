require 'test_helper'

class ForsaleTest < ActiveSupport::TestCase
  def setup
    @forsale = Forsale.new(fs_name: "Example title", fs_desc: "any desc" ,
                   fs_image: File.new(Rails.root.join("test/fixtures/files/rails.png")),
                   fs_price: 50)
  
  end
  
  test "fs_name should be present" do 
    @forsale.fs_name = "" 
        assert_not @forsale.valid?
  end
  
  test "fs_desc should be present" do 
    @forsale.fs_desc = "" 
        assert_not @forsale.valid?
  end
  
  test "fs_image should be present" do 
    @forsale.fs_image.destroy
        assert_not @forsale.valid?
  end
  
  test "fs_price should be present" do 
    @forsale.fs_price = ""
        assert_not @forsale.valid?
  end
  
  test "fs_price should be integer only" do 
    @forsale.fs_price = "a"
    assert_not @forsale.valid?
  end
  
  test "fs_price should be greate than 0" do 
    @forsale.fs_price = 0
    assert_not @forsale.valid?
  end
  
  test "fs_name should not be too long" do 
    @forsale.fs_name = "a" * 21
        assert_not @forsale.valid?
  end

  test "fs_name should be unique" do 
    dupli = @forsale.dup
    dupli.fs_name = @forsale.fs_name.upcase
    @forsale.save
    assert_not dupli.valid?
  end
  
end