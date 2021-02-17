class Friendship < ApplicationRecord
  belongs_to :friend_one, :class_name => "User", foreign_key: :friend_one_id
  belongs_to :friend_two, :class_name => "User", foreign_key: :friend_two_id

  # validate :friendship_possible


  # def friendship_possible
  #   if friend_one.frienships.includes?
  # end
end
