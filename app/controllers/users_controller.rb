class UsersController < ApplicationController
  def new
  end

  def new_post
    puts params
    user = User.new
    if user.id != nil
      user.username = params["username"]
      user.bio = params["bio"]
      user.save
    else
      redirect_to "/error"
    end
  end

  def show
    @id = params[:id]
    @username = User.find_by(id: @id).username
    @bio = User.find_by(id: @id).bio
  end

  def error
  end
end
