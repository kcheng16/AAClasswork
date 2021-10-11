# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  password_digest :string           not null
#  session_token   :string           not null
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_session_token  (session_token) UNIQUE
#  index_users_on_username       (username) UNIQUE
#
class User < ApplicationRecord
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true, uniqueness: true


  after_initialize :ensure_session_token

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  def password=(password)
    
    self.password_digest = BCrypt::Password.create(password)
    
    @password = password
  end

  def is_valid_password?(password)
    password_object = BCrypt::Password.new(self.password_digest)
    password_object.is_password?(password)
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: :username)
    if user && user.is_valid_password?(password)
      return user
    else
      nil
    end
    
  end
end
