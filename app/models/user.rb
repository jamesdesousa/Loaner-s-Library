class User < ApplicationRecord
    has_many :loans
    has_many :items
    has_many :wishlist_items
    has_many :borrowers
    has_many :borrowed_items, through: :borrowers
    has_many :friendships
    has_many :friends, through: :friendships
    #macros for friendships/ items through loans


    validates :name, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, length: { in: 6..20 }
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true

    has_secure_password

    def current_loans
        self.loans.select{ |loan| loan.current }
    end

    def past_loans
        self.loans.select{ |loan| !loan.current }
    end

end
