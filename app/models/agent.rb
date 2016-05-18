class Agent < ActiveRecord::Base
    validates :first_name, length: { minimum: 1, maximum: 50 }, presence: true
    validates :last_name, length: { minimum: 1, maximum: 50 }, presence: true
end
