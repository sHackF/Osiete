module UsersHelper
  def current_user
    User.first
  end
end
