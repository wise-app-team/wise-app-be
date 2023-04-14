class Drug < ApplicationRecord
  has_many :user_drugs
  has_many :users, through: :user_drugs

  validates :name, presence: true
  validates :rxcui, presence: true
end