class Login < ActiveRecord::Base
  validates :user_id, presence: true
  validates :session_token, uniqueness: true, presence: true

  belongs_to :user

  def self.find_all_logins_for_user(user)
    Login.where(user_id: user.id)
  end
end
