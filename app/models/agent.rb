class Agent < ActiveRecord::Base
    has_one :client
    has_many :inventories
    has_many :sales
    
    before_save { self.email = email.downcase }
    validates :first_name, length: { minimum: 1, maximum: 50 }, presence: true
    validates :last_name, length: { minimum: 1, maximum: 50 }, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: { minimum: 6 }
    #validates :client_id, presence: true

    validate :unique_email
    
    
    def unique_email
        self.errors.add(:email, "is already taken") if Manager.where(email: self.email).exists? || WarehouseStaffer.where(email: self.email).exists?
    end
    

   has_secure_password 
   
   
    def Agent.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
