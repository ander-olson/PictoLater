class UsersController < ApplicationController
  before_action :already_logged_in, only: [:new, :create]

  def already_logged_in
    if current_user
      redirect_to "/"
    end
  end

  def new
    @user = User.new

    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      profile = Profile.new({ owner_id: @user.id })
      profile.save!
      login_user!({ show: true, profile_id: profile.id })
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
