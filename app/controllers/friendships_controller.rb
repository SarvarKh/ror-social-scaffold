class FriendshipsController < ApplicationController
  def index
    @friends = Friendship.where(friend_id: current_user.id, confirmed: true)
    @friends_inverse = Friendship.where(user_id: current_user.id, confirmed: true)
    @invitations = Friendship.where(friend_id: current_user.id, confirmed: false)
  end

  def create
    @friendship = current_user.friendships.new(friendship_params)
    
    user_second = User.find(params[:friend_id])
    @friendship_second = user_second.friendships.new(user_id: params[:friend_id], friend_id: params[:user_id], confirmed: params[:confirmed])

    if @friendship.save && @friendship_second.save
      redirect_to users_path, notice: 'You sent a friend request.'
    else
      redirect_to users_path, alert: 'You already sent a friend request.'
    end
  end

  def update
    friendship = Friendship.find_by(friend_id: current_user, user: params[:friend_id])
    friendship.update(confirmed: true)
    redirect_to user_friendships_path, notice: 'You accepted a friend request.'
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
