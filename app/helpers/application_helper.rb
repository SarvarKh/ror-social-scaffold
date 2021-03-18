module ApplicationHelper
  def menu_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'menu-item active' : 'menu-item'

    content_tag(:div, class: class_name) do
      link_to link_text, link_path
    end
  end

  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    else
      link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    end
  end

  def send_or_recall_friend_request(user)
    request = Friendship.find_by(user: current_user, friend: user)
    if request
      link_to('Recall friend request', user_friendship_path(id: request.id, user_id: current_user.id, friend_id: user.id), method: :delete, class: 'btn-alert')
    else
      link_to('Send friend request', user_friendships_path(user_id: current_user.id, friend_id: user.id, confirmed: false), method: :post, class: 'btn-primary')
    end
  end
end
