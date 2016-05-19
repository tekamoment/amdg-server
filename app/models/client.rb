class Client < ActiveRecord::Base
    validates :client_name, presence: true, length: { maximum: 50 }
end
