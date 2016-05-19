class Sale < ActiveRecord::Base
  belongs_to :agent
  belongs_to :client
  has_many :sale_itemlists
  
  validates :agent_id, presence: true
  validates :client_id, presence: true
end
