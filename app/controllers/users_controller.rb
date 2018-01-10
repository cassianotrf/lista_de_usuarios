class UsersController < ApplicationController

  def new
    new_list_user
    @user = User.all
  end

  def new_list_user
      url = 'https://randomuser.me/api/'
      user_serialized = open(url).read
      user = JSON.parse(user_serialized)

  end
end
