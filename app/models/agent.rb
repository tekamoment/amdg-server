class Agent < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :first_name, length: { minimum: 1, maximum: 50 }, presence: true
    validates :last_name, length: { minimum: 1, maximum: 50 }, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: { minimum: 6 }

   has_secure_password 
end
