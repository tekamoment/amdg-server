class ItemType < ActiveRecord::Base
    has_many :item_models
    
    validates :itemtype, presence: true, length: { maximum: 50 }
end
