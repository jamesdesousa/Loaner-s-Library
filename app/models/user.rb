class User < ApplicationRecord
    has_many :loans
    has_many :items
    has_many :wishlist_items
    has_many :borrowers
    has_many :borrowed_items, through: :borrowers 
    #macros for friendships/ items through loans


    validates :name, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, length: { in: 6..20 }
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true

    has_secure_password

end
