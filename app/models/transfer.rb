class Transfer < ActiveRecord::Base
    belongs_to :batch_from, class_name: "Inventory"
    belongs_to :batch_to, class_name: "Inventory"
    
    has_many :transfer_itemlists
    has_many :item_models, :through => :transfer_itemlists
end
