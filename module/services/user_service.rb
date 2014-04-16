class UserService
  def self.list_users
    user_list = []
    User.all.each do |user|
      user_list << user.name
    end
    user_list
  end
end