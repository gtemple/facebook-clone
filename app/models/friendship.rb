class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  validates_presence_of :user_id, :friend_id
  validate :user_is_not_equal_friend
  
  def is_mutual
    self.friend.friends.include?(self.user)
  end

  private
  def user_is_not_equal_friend
    errors.add(:friend, "can't be the same as user") if self.user == self.friend
  end

end
