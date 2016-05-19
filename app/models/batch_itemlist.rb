class BatchItemlist < ActiveRecord::Base
    belongs_to :inventory
    belongs_to :item_model
end
