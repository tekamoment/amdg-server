class Client < ActiveRecord::Base
    belongs_to :agent
    has_many :discounts
    validates :client_name, presence: true, length: { maximum: 255 }
end
