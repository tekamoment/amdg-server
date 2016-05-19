class Discount < ActiveRecord::Base
    validates :discount_rate, presence: true, numericality: { greater_than: 0, less_than: 1 }
end

