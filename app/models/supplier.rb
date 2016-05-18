class Supplier < ActiveRecord::Base
    validates :supplier_name, presence: true, length: { maximum: 100 }
end
