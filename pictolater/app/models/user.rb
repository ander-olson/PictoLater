class User < ActiveRecord::Base
  attr_reader :password

  validates :username, :password_digest, presence: true
  validates :password, length: { minimum: 8, allow_nil: true }

  after_initialize do |user|
    user.session_token ||= create_session_token
  end

  has_many :logins
  has_one :profile
  has_many :photos, foreign_key: :owner_id

  def create_session_token
    SecureRandom.urlsafe_base64
  end

  def password=(password)
    @password = password

    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_credentials(username, password)
    user_instance = User.find_by(username: username)
    if user_instance.is_password?(password)
      return user_instance
    end

    nil
  end
end
