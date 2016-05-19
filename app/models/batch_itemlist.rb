class BatchItemlist < ActiveRecord::Base
  self.primary_keys :id, :item_model_id 
  belongs_to :item_model
  belongs_to :inventory
  
  validates :item_model_id, presence: true
  validates :delivery_id, presence: true
end
