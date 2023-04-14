class User < ApplicationRecord
  has_and_belongs_to_many :drugs
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end