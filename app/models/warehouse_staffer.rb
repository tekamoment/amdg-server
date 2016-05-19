class WarehouseStaffer < ActiveRecord::Base
    has_many :deliveries 
    has_many :inventories
    
    before_save { self.email = email.downcase }
    validates :first_name, presence: true, length: { maximum: 50 }
    validates :last_name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
    
    validate :unique_email
    
    def unique_email
        self.errors.add(:email, "is already taken") if Agent.where(email: self.email).exists? || Manager.where(email: self.email).exists?
    end
    
    has_secure_password
    
    def WarehouseStaffer.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
