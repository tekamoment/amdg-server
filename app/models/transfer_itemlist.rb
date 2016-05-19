class TransferItemlist < ActiveRecord::Base
    belongs_to :transfer 
    belongs_to :item_model
end
