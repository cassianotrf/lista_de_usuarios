class UsersController < ApplicationController


  def index
    User.delete_all
    new_list_user
    @users = User.all
  end

  def new_list_user
    30.times do
      url = 'https://randomuser.me/api/'
      response = HTTParty.get(url)
      data = response.parsed_response

      user.gender = data["results"][0]["gender"]
      user.title = data["results"][0]["name"]["title"]
      user.first_name = data["results"][0]["name"]["first"]
      user.last_name = data["results"][0]["name"]["last"]
      user.email = data["results"][0]["email"]
      user.picture = data["results"][0]["picture"]["large"]
      user = User.new
      user.save
    end
  end
end
