class Client < ActiveRecord::Base
    belongs_to :agent
    
    validates :client_name, presence: true, length: { maximum: 50 }
end
