class Delivery < ActiveRecord::Base
    validates :date_delivered, presence: true
end
