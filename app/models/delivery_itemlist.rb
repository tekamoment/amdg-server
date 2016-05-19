class DeliveryItemlist < ActiveRecord::Base
  self.primary_keys :delivery_id, :item_model_id
  belongs_to :delivery
  belongs_to :item_model
  
  validates :delivery_id, presence: true
  validates :item_model_id, presence: true
end
