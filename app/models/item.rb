class Item < ApplicationRecord
  belongs_to :user
  has_many :loans
  has_many :borrowers, through: :loans
  validates :name, presence: true

  def current_loan
    self.loans.each do |loan|
      if loan.current
        return loan.id
      end
    end
    nil
  end

end
