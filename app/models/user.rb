class User < ApplicationRecord

    validates :name, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, length: { in: 6..20 }
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true
    
    has_secure_password
    
end
