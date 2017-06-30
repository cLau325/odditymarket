require 'test_helper'

class ForauctionTest < ActiveSupport::TestCase
  def setup
    @forauction = Forauction.new(fa_name: "Example title", fa_desc: "any desc" ,
                   fa_image: File.new(Rails.root.join("test/fixtures/files/rails.png")),
                   fa_baseprice: 50 )
  end
  
  test "should be valid" do
        assert @forauction.valid?
  end
  
  test "fa_name should be present" do 
    @forauction.fa_name = "" 
        assert_not @forauction.valid?
  end
  
  test "fa_desc should be present" do 
    @forauction.fa_desc = "" 
        assert_not @forauction.valid?
  end
  
  test "fa_baseprice should be present" do 
    @forauction.fa_baseprice = "" 
        assert_not @forauction.valid?
  end
  
  test "fa_baseprice should be integer only" do 
    @forauction.fa_baseprice = "a"
    assert_not @forauction.valid?
  end
  
  test "fa_baseprice should be greate than 0" do 
    @forauction.fa_baseprice = 0
    assert_not @forauction.valid?
  end
  
  test "fa_image should be present" do 
    @forauction.fa_image.destroy
        assert_not @forauction.valid?
  end
  
  test "fa_name should not be too long" do 
    @forauction.fa_name = "a" * 21
        assert_not @forauction.valid?
  end

  test "fa_name should be unique" do 
    dupli = @forauction.dup
    dupli.fa_name = @forauction.fa_name.upcase
    @forauction.save
    assert_not dupli.valid?
  end
  
end
