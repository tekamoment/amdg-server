class SaleItemlist < ActiveRecord::Base
  self.primary_keys :id, :item_model_id
  belongs_to :item_model
  belongs_to :sale
  
  validates :item_model_id, presence: true
  validates :sale_id, presence: true
end
