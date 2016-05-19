class ItemModel < ActiveRecord::Base
    belongs_to  :item_type
    
    validates :description, presence: true, length: { maximum: 100 }
    validates :srp, presence: true, numericality: { greater_than: 0 }
    validates :cost, presence: true, numericality: { greater_than: 0 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :item_type_id, presence: true
end
