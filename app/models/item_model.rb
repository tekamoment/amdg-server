class ItemModel < ActiveRecord::Base
    belongs_to  :item_type
    has_many :delivery_itemlists
    has_many :deliveries, :through => :delivery_itemlists
    
    has_many :batch_itemlists
    has_many :inventories, :through => :batch_itemlists
    
    has_many :sale_itemlists
    has_many :sales, :through => :sale_itemlists
    
    has_many :transfer_itemlists
    has_many :transfers, :through => :transfer_itemlists
    
    validates :description, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
    validates :srp, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000000000 }
    validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000000000 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000000}
    validates :item_type_id, presence: true
end
