class SaleItemlist < ActiveRecord::Base
    belongs_to :sale
    belongs_to :item_model
    
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000000}
end
