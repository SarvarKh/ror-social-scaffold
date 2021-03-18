class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  

  def self.my_pending_invitations
    pending_invitations = []
    current_user.friendships.where(friend_id: current_user.id, confirmed: false).map do |invitation|
      pending_invitations.push(Users.find(invitation.user_id))
    end
    pending_invitations
  end

end
