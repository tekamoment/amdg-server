class ItemModel < ActiveRecord::Base
    belongs_to  :item_type
    has_many :delivery_itemlists
    has_many :batch_itemlists
    has_many :sale_itemlists
    #has_many :transfer_itemlists
    
    validates :description, presence: true, length: { maximum: 100 }
    validates :srp, presence: true, numericality: { greater_than: 0 }
    validates :cost, presence: true, numericality: { greater_than: 0 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :item_type_id, presence: true
end
