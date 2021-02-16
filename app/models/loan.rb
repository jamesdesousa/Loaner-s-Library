class Loan < ApplicationRecord
  belongs_to :borrower, :class_name => "User", :foreign_key => "user_id"
  belongs_to :item
  validates :duedate, presence: true
  
end
