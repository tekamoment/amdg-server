class DeliveryItemlist < ActiveRecord::Base
    belongs_to :delivery
    belongs_to :item_model
end
