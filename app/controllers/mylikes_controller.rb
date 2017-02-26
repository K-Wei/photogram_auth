
  def index
    @user = current_user

    @likes = Like.where(:user_id => @user.id)

    render("mylikes/index.html.erb")
  end

end
