class Friendship < ApplicationRecord
  belongs_to :friend_one, class: "User", foreign_key: :friend_one_id
  belongs_to :friend_two, class: "User", foreign_key: :friend_two_id

  # validate :friendship_possible
  
end
