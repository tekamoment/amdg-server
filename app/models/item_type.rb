class ItemType < ActiveRecord::Base
    has_many :item_models
    has_many :discounts
    
    validates :itemtype, presence: true, length: { maximum: 50 }
end
