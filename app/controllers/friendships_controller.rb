class FriendshipsController < ApplicationController
    def index
      @invitations = Friendship.where(friend_id: current_user.id, confirmed: false)
    end

    def create
        @friendship = current_user.friendships.new(friendship_params)
    
        if @friendship.save
          redirect_to users_path, notice: 'You sent a friend request.'
        else
          redirect_to users_path, alert: 'You already sent a friend request.'
        end
    end
    
    def destroy
        friendship = Friendship.find_by(friend_id: params[:friend_id], user: current_user)
        if friendship
          friendship.destroy
          redirect_to users_path, notice: 'You recalled friend request.'
        else
          redirect_to users_path, alert: 'You cannot recall friend request that you recalled already.'
        end
    end
    
    private

    def friendship_params
        params.permit(:user_id, :friend_id, :confirmed)
    end
end
