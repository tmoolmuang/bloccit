module UsersHelper
  def user_has_posts?
    current_user.posts.count > 0
  end
  def user_has_comments?
    current_user.comments.count> 0
  end
  
  def get_post_title(post_id)
    @post = Post.find(post_id)
  end
  def get_user_gravatar(post_id)
    User.find(Post.find(post_id).user_id)
    # User.find(Post.find(post_id).user_id).avatar_url(32)
  end
  def get_vote_count(post_id)
    Vote.where(post_id: post_id).count
  end
  def get_comment_count(post_id)
    Comment.where(post_id: post_id).count
  end
end
