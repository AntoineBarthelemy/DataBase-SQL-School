class User < ActiveRecord::Base
  has_many :posts

  before_validation :ensure_than_email_format, :user_functionality
  # TODO: Add some validation
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  # TODO: Add some callbacks


  private

  def ensure_than_email_format
    self.email = email.strip unless email.nil?
  end

  def user_functionality
    self.username = username
  end
end
