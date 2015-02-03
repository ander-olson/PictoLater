class SessionsController < ApplicationController
  before_action :already_logged_in, only: [:new, :create]

  def already_logged_in
    if current_user
      render json: "You have already logged in"
    end
  end

  def new
    @user = User.new

    render :new
  end

  def create
    login_user!
  end

  def destroy
    @user = current_user
    userid = @user.id
    Login.where(user_id: userid, session_token: session[:session_token]).destroy_all
    session[:session_token] = nil
    redirect_to "/"
  end
end
