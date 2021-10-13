# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_session_token  (session_token)
#
class User < ApplicationRecord
  before_validation :ensure_session_token

  validates :password_digest, presence: true, uniqueness: true
  validates :session_token, :email, :name, presence: true

  def self.find_by_credential(username, password)
    user = User.find_by(username: username)

    if user && user.is_valid_password?(password)
      return user
    else
      nil
    end
  end

  def is_valid_password?(password)
    password_object = BCrypt::Password.create(self.password_digest)
    password_object.is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  # def generate_session_token
  #   self.session_token = SecureRandom.urlsafe_base64
  #   session:[session_token] = self.session_token
  # end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  

end
