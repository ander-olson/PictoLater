class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    login_info = Login.find_by(session_token: session[:session_token])
    if login_info
      login_info.user
    else
      nil
    end
  end

  def create_session_token
    SecureRandom.urlsafe_base64
  end

  def login_user!(options = {})
    @user = User.find_by_credentials(params[:user][:username],
                                     params[:user][:password])
    if @user
      new_token = create_session_token
      session[:session_token] = new_token
      userid = @user.id
      user_info = {user_id: userid, session_token: new_token}
      Login.create(user_info)

      if !(options.empty?) && options[:show]
        redirect_to "/#profiles/#{options[:profile_id]}"
      else
        redirect_to "/"
      end
    else
      render :new
    end
  end
end
