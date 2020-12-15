class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :received_friendships, class_name: 'Friendship', foreign_key: 'friend_id', dependent: :destroy
  has_many :received_friends, through: :received_friendships, source: 'user'

  has_many :likes, dependent: :destroy


  def active_friends
    friends.select { |friend| friend.friends.include?(self) }
  end

  def pending_friends 
    friends.select{ |friend| !friend.friends.include?(self)}
  end

  searchable do
    text :first_name, :boost => 2.0
    text :last_name

  end
end
