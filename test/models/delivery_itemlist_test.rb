require 'test_helper'

class DeliveryItemlistTest < ActiveSupport::TestCase
  def setup
    @delivery = deliveries(:one)
    @itemmodel = item_models(:one)
    @itemlist = DeliveryItemlist.new(delivery_id: @delivery.id, 
                                    item_model_id: @itemmodel.id,
                                    quantity: 5)
  end
  
  test "should be valid" do
    assert @itemlist.valid?
  end 

end
