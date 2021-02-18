class User < ApplicationRecord
    has_many :loans, dependent: :destroy
    has_many :items, dependent: :destroy
    has_many :wishlist_items, dependent: :destroy
    has_many :borrowers
    has_many :borrowed_items, through: :borrowers
    has_many :friendships, dependent: :destroy
    has_many :friends, through: :friendships
    #macros for friendships/ items through loans


    validates :name, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, length: { in: 6..20 }
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true
    after_destroy :detach_items

    has_secure_password

    def detach_items
      self.items.each do |item|
        item.user_id = nil
      end   
    end



    def current_loans
        self.loans.select{ |loan| loan.current }
    end

    def past_loans
        self.loans.select{ |loan| !loan.current }
    end

end
