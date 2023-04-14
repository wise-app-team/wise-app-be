class Drug < ApplicationRecord
  has_many :drug_users
  has_many :users, through: :drug_users

  validates :name, presence: true
  validates :rxcui, presence: true
end