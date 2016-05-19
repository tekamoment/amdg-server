class Sale < ActiveRecord::Base
  belongs_to :agent
  belongs_to :client
  
  validates :agent_id, presence: true
  validates :client_id, presence: true
end
