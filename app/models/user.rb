class User < ApplicationRecord
  has_many :user_drugs
  has_many :drugs, through: :user_drugs
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :phone_number
  # validates :street_address
  # validates :city
  # validates :state
  # validates :zip_code
  
  #validations for OAuth
  # validates_presence_of   :google_id, 
  #                         :google_token, 
  #                         :email
  # 
  # validates_uniqueness_of :google_id, 
  #                         :email
  # 
  # attr_accessor :provider
  
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, google_id: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider
  #     user.google_id = auth.uid
  #     user.name = auth.info.name
  #     user.email = auth.info.email
  #     user.google_token = auth.credentials.token
  #   end
  # end
end