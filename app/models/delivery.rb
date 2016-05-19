class Delivery < ActiveRecord::Base
    belongs_to :supplier
    belongs_to :warehouse_staffer
    has_many :delivery_itemlists
    
    validates :date_delivered, presence: true
    validates :warehouse_staffer_id, presence: true
    validates :supplier_id, presence: true
end
