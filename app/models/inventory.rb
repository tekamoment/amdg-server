class Inventory < ActiveRecord::Base
  belongs_to :agent
  belongs_to :warehouse_staffer
  
  has_many :batch_itemlists
  has_many :item_models, :through => :batch_itemlists
  
  validates :agent_id, presence: true
  validates :warehouse_staffer_id, presence: true
end
