require "rails_helper"

RSpec.describe User, :type => :model do
  context "with user1" do
    it "sends friend request to user2" do
      user1 = User.create(name: "Marcel", email: "marcel@example.com", password: "marcel")
      user2 = User.create(name: "Gary Thomas", email: "garythomas@example.com", password: "garythomas")

      friend_request = user1.friendships.create!(user_id: user1.id, friend_id: user2.id, confirmed: false)
      
      expect(friend_request.confirmed).to eq(false)
    end

    it "accepts friend request of user2" do
      user1 = User.create(name: "Marcel", email: "marcel@example.com", password: "marcel")
      user2 = User.create(name: "Gary Thomas", email: "garythomas@example.com", password: "garythomas")

      friend_request = user1.friendships.create!(user_id: user1.id, friend_id: user2.id, confirmed: false)
      friend_request.update(confirmed: true)
      
      expect(friend_request.confirmed).to eq(true)
    end
  end
end