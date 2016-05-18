class Agent < ActiveRecord::Base
    validates :first_name, length: { maximum: 50 }
end
