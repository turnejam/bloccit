module TopicsHelper
  def user_is_authorized_to_update?
    current_user && (current_user.admin? || current_user.moderator?)
  end
  def user_is_authorized_to_create_or_delete?
    current_user && current_user.admin?
  end
end
