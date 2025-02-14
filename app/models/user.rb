class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friendships, -> { where confirmed: true }
  has_many :request_received, -> { where confirmed: false }, class_name: 'Friendship', foreign_key: 'friend_id'
  has_many :request_sent, -> { where confirmed: false }, class_name: 'Friendship', foreign_key: 'user_id'
end
