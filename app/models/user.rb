class User < ApplicationRecord
  has_secure_password

  before_save :downcase_email

  validates :first_name, :last_name, presence: true, length: { minimum: 1, maximum: 50 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
