class Item < ApplicationRecord
  belongs_to :user
  has_many :loans
  has_many :borrowers, through: :loans
  validates :name, presence: true
end
