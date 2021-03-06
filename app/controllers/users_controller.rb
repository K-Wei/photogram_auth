class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.where(:user_id => @user.id)
    @likes = Like.where(:user_id => @user.id)
    @comments = Comment.where(:user_id => @user.id)

    render("users/show.html.erb")
  end

  def mylikes
    @user = current_user

    @liked_photos = @user.liked_photos

    render("users/mylikes.html.erb")
  end

end
