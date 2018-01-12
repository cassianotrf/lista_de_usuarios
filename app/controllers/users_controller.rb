class UsersController < ApplicationController

  def index
    #User.delete_all
    new_list_user
    #if params[:keywords].present?
    #  @users = User.search(params[:keywords], fields: [:first_name, :gender,
    #    :title, :last_name, :email, :nat, :seed], page: params[:page], per_page: 100)

  end

  def new_list_user
    30.times do
      url = 'https://randomuser.me/api/'
      response = HTTParty.get(url)
      data = response.parsed_response
      user = User.new
      user.gender = data["results"][0]["gender"]
      user.title = data["results"][0]["name"]["title"]
      user.first_name = data["results"][0]["name"]["first"]
      user.last_name = data["results"][0]["name"]["last"]
      user.email = data["results"][0]["email"]
      user.picture = data["results"][0]["picture"]["large"]
      user.save
    end
  end
end
