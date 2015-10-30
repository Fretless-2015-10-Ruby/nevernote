class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: { minimum: 8 }
  validates :username, presence: true, uniqueness: true
  validate :passwords_match

  has_many :notes

  before_create :generate_api_key

  private

  def passwords_match
    if password.present? && password != password_confirmation
      errors.add :password_confirmation, 'must match the password'
    end
  end

  def generate_api_key
    self.api_key = BCrypt::Password.create(password_digest)
  end
end
