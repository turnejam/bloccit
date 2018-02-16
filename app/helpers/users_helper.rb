module UsersHelper
  def user_has_posted?
    (@user.posts.count + @user.comments.count) > 0
  end
end
