class LoginController < ApplicationController
  def index
    @logins = Login.find_all_logins_for_user(current_user)

    render :index
  end

  def destroy
    @logins = Login.find_all_logins_for_user(current_user)
    id = params[:login][:unique_id]
    user_id = current_user.id

    Login.where(user_id: user_id, id: id).destroy_all

    redirect_to new_session
  end
end
