class Delivery < ActiveRecord::Base
    belongs_to :supplier
    belongs_to :warehouse_staffer
    
    validates :date_delivered, presence: true
    validates :warehouse_staffer_id, presence: true
    validates :supplier_id, presence: true
end
