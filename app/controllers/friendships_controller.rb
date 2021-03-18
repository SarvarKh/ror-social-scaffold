class FriendshipsController < ApplicationController
    def create
        @friendship = current_user.friendships.new(friendship_params)
    
        if @friendship.save
          redirect_to users_path, notice: 'You sent a friend request.'
        else
          redirect_to users_path, alert: 'You already sent a friend request.'
        end
    end
    
    def destroy
        # like = Like.find_by(id: params[:id], user: current_user, post_id: params[:post_id])
        # if like
        #   like.destroy
        #   redirect_to posts_path, notice: 'You disliked a post.'
        # else
        #   redirect_to posts_path, alert: 'You cannot dislike post that you did not like before.'
        # end
    end
    
    private

    def friendship_params
        params.permit(:user_id, :friend_id, :confirmed)
    end
end
