class ItemType < ActiveRecord::Base
    validates :itemtype, presence: true, length: { maximum: 50 }
end
