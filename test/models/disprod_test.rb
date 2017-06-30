require 'test_helper'

class DisprodTest < ActiveSupport::TestCase
  def setup
    @disprod = Disprod.new(dp_name: "Example title", desc: "any desc" ,
                   image: File.new(Rails.root.join("test/fixtures/files/rails.png")))
  end
  
  test "should be valid" do
        assert @disprod.valid?
  end
  
  test "dp_name should be present" do 
    @disprod.dp_name = "" 
        assert_not @disprod.valid?
  end
  
  test "desc should be present" do 
    @disprod.desc = "" 
        assert_not @disprod.valid?
  end
  
  test "image should be present" do 
    @disprod.image.destroy
        assert_not @disprod.valid?
  end
  
  test "dp_name should not be too long" do 
    @disprod.dp_name = "a" * 21
        assert_not @disprod.valid?
  end

  test "dp_name should be unique" do 
    dupli = @disprod.dup
    dupli.dp_name = @disprod.dp_name.upcase
    @disprod.save
    assert_not dupli.valid?
  end

  test "image with unaccepted type" do 
    #@disprod.image_file_name = "rail.gif"
    #@disprod.image.destroy
    #@disprod.image = File.new(Rails.root.join("test/fixtures/files/rail.gif"))
    #@disprod.image.destroy
    #puts @disprod.image_file_name
    #    assert_nil @disprod.image
  end

end
