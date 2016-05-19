class Discount < ActiveRecord::Base
    belongs_to :client
    belongs_to :item_type
    
    validates :discount_rate, presence: true, numericality: { greater_than: 0, less_than: 1 }
    validates :client_id, presence: true
    validates :item_type_id, presence: true
end

