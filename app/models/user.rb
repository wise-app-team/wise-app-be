class User < ApplicationRecord
  has_many :user_drugs
  has_many :drugs, through: :user_drugs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
 
  has_secure_password

  # Allow users to sign up with OAuth providers
  def from_oauth?
    provider.present?
  end

  def find_by_email(email)
    User.find_by(email: email)
    binding.pry
  end
end
