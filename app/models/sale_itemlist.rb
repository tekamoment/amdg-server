class SaleItemlist < ActiveRecord::Base
    belongs_to :sale
    belongs_to :item_model
end
